package com.igsinreels;

import android.app.Activity;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Typeface;
import android.graphics.drawable.GradientDrawable;
import android.os.Handler;
import android.os.Looper;
import android.util.TypedValue;
import android.view.Gravity;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;

import androidx.fragment.app.Fragment;

import java.util.Locale;

/**
 * Pantalla que sustituye al visor de Reels: senal de STOP, mensaje en el
 * idioma del movil y boton para volver. Se cierra sola tras unos segundos.
 */
public final class BlockScreen {
    private static final long AUTO_CLOSE_MS = 3000;

    // {titulo, mensaje, boton}
    static String[] strings() {
        switch (Locale.getDefault().getLanguage()) {
            case "es": return new String[] {"Reel bloqueado", "Tu tiempo vale más que este scroll.", "Volver"};
            case "ca": return new String[] {"Reel bloquejat", "El teu temps val més que aquest scroll.", "Tornar"};
            case "gl": return new String[] {"Reel bloqueado", "O teu tempo vale máis ca este scroll.", "Volver"};
            case "eu": return new String[] {"Reel blokeatuta", "Zure denbora scroll hau baino gehiago da.", "Itzuli"};
            case "pt": return new String[] {"Reel bloqueado", "O seu tempo vale mais do que este scroll.", "Voltar"};
            case "fr": return new String[] {"Reel bloqué", "Ton temps vaut plus que ce scroll.", "Retour"};
            case "it": return new String[] {"Reel bloccato", "Il tuo tempo vale più di questo scroll.", "Indietro"};
            case "de": return new String[] {"Reel blockiert", "Deine Zeit ist mehr wert als dieser Scroll.", "Zurück"};
            case "nl": return new String[] {"Reel geblokkeerd", "Je tijd is meer waard dan deze scroll.", "Terug"};
            case "pl": return new String[] {"Rolka zablokowana", "Twój czas jest wart więcej niż ten scroll.", "Wróć"};
            case "ru": return new String[] {"Reel заблокирован", "Твоё время дороже этого скролла.", "Назад"};
            case "uk": return new String[] {"Reel заблоковано", "Твій час вартий більше за цей скрол.", "Назад"};
            case "tr": return new String[] {"Reel engellendi", "Zamanın bu kaydırmadan daha değerli.", "Geri"};
            case "ar": return new String[] {"تم حظر الريل", "وقتك أثمن من هذا التمرير.", "رجوع"};
            case "ja": return new String[] {"リールはブロック中", "あなたの時間はこのスクロールより大切です。", "戻る"};
            case "ko": return new String[] {"릴스 차단됨", "당신의 시간은 이 스크롤보다 소중해요.", "돌아가기"};
            case "zh": return new String[] {"Reel 已屏蔽", "你的时间比这次滑动更宝贵。", "返回"};
            case "hi": return new String[] {"Reel ब्लॉक है", "आपका समय इस स्क्रॉल से ज़्यादा कीमती है।", "वापस"};
            default:   return new String[] {"Reel blocked", "Your time is worth more than this scroll.", "Go back"};
        }
    }

    public static View create(LayoutInflater inflater, final Fragment fragment, boolean autoClose) {
        return build(inflater.getContext(), new Host() {
            @Override
            public boolean active() {
                return fragment.isAdded();
            }

            @Override
            public boolean visible() {
                return fragment.isResumed();
            }

            @Override
            public Activity activity() {
                return fragment.getActivity();
            }

            @Override
            public void dismiss() {
            }

            @Override
            public boolean goesBack() {
                return true;
            }
        }, autoClose);
    }

    /**
     * Pantalla STOP a pantalla completa encima de la actividad (por ejemplo al
     * deslizar hacia otro reel en el visor, que ya se ha cerrado). "Volver" y el cierre
     * automatico solo quitan esta capa.
     */
    public static void overlay(final Activity a) {
        if (a == null || a.isFinishing()) return;
        final ViewGroup content = a.findViewById(android.R.id.content);
        if (content == null || content.findViewWithTag(OVERLAY_TAG) != null) return;
        final View[] self = new View[1];
        self[0] = build(a, new Host() {
            @Override
            public boolean active() {
                return self[0] != null && self[0].getParent() != null;
            }

            @Override
            public boolean visible() {
                return active() && !a.isFinishing();
            }

            @Override
            public Activity activity() {
                return a;
            }

            @Override
            public void dismiss() {
                content.removeView(self[0]);
            }

            @Override
            public boolean goesBack() {
                return false;
            }
        }, true);
        self[0].setTag(OVERLAY_TAG);
        self[0].setTranslationZ(dp(a, 100)); // por encima de todo lo de Instagram
        self[0].setFocusable(true);
        self[0].setFocusableInTouchMode(true);
        content.addView(self[0], new FrameLayout.LayoutParams(-1, -1));
        self[0].requestFocus();
    }

    private static final String OVERLAY_TAG = "igsinreels_overlay";

    /** Donde vive la pantalla STOP: un fragment o una capa sobre la actividad. */
    private interface Host {
        boolean active();

        boolean visible();

        Activity activity();

        void dismiss();

        /** true: "Volver" cierra tambien la pantalla de debajo. */
        boolean goesBack();
    }

    private static View build(Context ctx, final Host host, boolean autoClose) {
        String[] s = strings();

        FrameLayout root = new FrameLayout(ctx);
        // El degradado va en una capa interior: Instagram cambia el fondo de la vista
        // raiz de sus fragments (quedaba en blanco).
        View bgLayer = new View(ctx);
        bgLayer.setBackground(new GradientDrawable(GradientDrawable.Orientation.TOP_BOTTOM,
                new int[] {0xFF1B1035, 0xFF0B0B12, 0xFF000000}));
        root.addView(bgLayer, new FrameLayout.LayoutParams(-1, -1));
        root.setClickable(true); // que los toques no lleguen a lo de debajo
        root.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));

        LinearLayout col = new LinearLayout(ctx);
        col.setOrientation(LinearLayout.VERTICAL);
        col.setGravity(Gravity.CENTER_HORIZONTAL);
        int pad = dp(ctx, 32);
        col.setPadding(pad, pad, pad, pad);
        root.addView(col, new FrameLayout.LayoutParams(-1, -2, Gravity.CENTER));

        StopSign sign = new StopSign(ctx);
        col.addView(sign, new LinearLayout.LayoutParams(dp(ctx, 150), dp(ctx, 150)));

        TextView title = new TextView(ctx);
        title.setText(s[0]);
        title.setTextColor(Color.WHITE);
        title.setTextSize(TypedValue.COMPLEX_UNIT_SP, 28);
        title.setTypeface(Typeface.DEFAULT_BOLD);
        title.setGravity(Gravity.CENTER);
        LinearLayout.LayoutParams lp = new LinearLayout.LayoutParams(-2, -2);
        lp.topMargin = dp(ctx, 32);
        col.addView(title, lp);

        TextView msg = new TextView(ctx);
        msg.setText(s[1]);
        msg.setTextColor(0xB3FFFFFF);
        msg.setTextSize(TypedValue.COMPLEX_UNIT_SP, 17);
        msg.setGravity(Gravity.CENTER);
        msg.setLineSpacing(0, 1.2f);
        lp = new LinearLayout.LayoutParams(-2, -2);
        lp.topMargin = dp(ctx, 12);
        col.addView(msg, lp);

        TextView back = new TextView(ctx);
        back.setText(s[2]);
        back.setTextColor(Color.BLACK);
        back.setTextSize(TypedValue.COMPLEX_UNIT_SP, 16);
        back.setTypeface(Typeface.DEFAULT_BOLD);
        back.setGravity(Gravity.CENTER);
        back.setPadding(dp(ctx, 36), dp(ctx, 14), dp(ctx, 36), dp(ctx, 14));
        GradientDrawable pill = new GradientDrawable();
        pill.setColor(Color.WHITE);
        pill.setCornerRadius(dp(ctx, 28));
        back.setBackground(pill);
        lp = new LinearLayout.LayoutParams(-2, -2);
        lp.topMargin = dp(ctx, 40);
        col.addView(back, lp);

        final Runnable goBack = new Runnable() {
            private boolean done;

            @Override
            public void run() {
                if (done || !host.active()) return;
                done = true;
                Activity a = host.activity();
                host.dismiss();
                if (!host.goesBack() || a == null || a.isFinishing()) return;
                try {
                    a.onBackPressed();
                } catch (Throwable t) {
                    a.finish();
                }
            }
        };
        back.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                goBack.run();
            }
        });
        if (autoClose) {
            final Handler h = new Handler(Looper.getMainLooper());
            h.postDelayed(new Runnable() {
                @Override
                public void run() {
                    if (!host.active()) return;
                    if (!host.visible()) return;
                    goBack.run();
                }
            }, AUTO_CLOSE_MS);
        }
        return root;
    }

    static int dp(Context ctx, float v) {
        return Math.round(v * ctx.getResources().getDisplayMetrics().density);
    }

    /** Octogono rojo con borde blanco y "STOP", dibujado a mano (sin recursos). */
    static final class StopSign extends View {
        private final Paint fill = new Paint(Paint.ANTI_ALIAS_FLAG);
        private final Paint border = new Paint(Paint.ANTI_ALIAS_FLAG);
        private final Paint text = new Paint(Paint.ANTI_ALIAS_FLAG);
        private final Path path = new Path();

        StopSign(Context ctx) {
            super(ctx);
            fill.setColor(0xFFE53935);
            border.setColor(Color.WHITE);
            border.setStyle(Paint.Style.STROKE);
            text.setColor(Color.WHITE);
            text.setTextAlign(Paint.Align.CENTER);
            text.setTypeface(Typeface.create(Typeface.DEFAULT, Typeface.BOLD));
        }

        @Override
        protected void onDraw(Canvas c) {
            float w = getWidth(), h = getHeight();
            float r = Math.min(w, h) / 2f;
            float cx = w / 2f, cy = h / 2f;
            float stroke = r * 0.07f;
            octagon(cx, cy, r - stroke / 2f);
            c.drawPath(path, fill);
            border.setStrokeWidth(stroke);
            octagon(cx, cy, r - stroke * 1.6f);
            c.drawPath(path, border);
            text.setTextSize(r * 0.52f);
            Paint.FontMetrics fm = text.getFontMetrics();
            c.drawText("STOP", cx, cy - (fm.ascent + fm.descent) / 2f, text);
        }

        private void octagon(float cx, float cy, float r) {
            path.reset();
            for (int i = 0; i < 8; i++) {
                double a = Math.toRadians(22.5 + 45 * i);
                float x = cx + (float) (r * Math.cos(a));
                float y = cy + (float) (r * Math.sin(a));
                if (i == 0) path.moveTo(x, y); else path.lineTo(x, y);
            }
            path.close();
        }
    }

    private BlockScreen() {}
}
