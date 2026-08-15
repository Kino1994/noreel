.class Lcom/igsinreels/Settings$9;
.super Ljava/lang/Object;
.source "Settings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/igsinreels/Settings;->show(Landroid/app/Activity;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$key:Ljava/lang/String;

.field final synthetic val$prefs:Landroid/content/SharedPreferences;

.field final synthetic val$t:Lcom/igsinreels/Settings$Toggle;


# direct methods
.method constructor <init>(Lcom/igsinreels/Settings$Toggle;Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 525
    iput-object p1, p0, Lcom/igsinreels/Settings$9;->val$t:Lcom/igsinreels/Settings$Toggle;

    iput-object p2, p0, Lcom/igsinreels/Settings$9;->val$prefs:Landroid/content/SharedPreferences;

    iput-object p3, p0, Lcom/igsinreels/Settings$9;->val$key:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .line 528
    iget-object p1, p0, Lcom/igsinreels/Settings$9;->val$t:Lcom/igsinreels/Settings$Toggle;

    iget-boolean v0, p1, Lcom/igsinreels/Settings$Toggle;->on:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Lcom/igsinreels/Settings$Toggle;->setOn(Z)V

    .line 529
    iget-object p1, p0, Lcom/igsinreels/Settings$9;->val$prefs:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    iget-object v0, p0, Lcom/igsinreels/Settings$9;->val$key:Ljava/lang/String;

    iget-object v1, p0, Lcom/igsinreels/Settings$9;->val$t:Lcom/igsinreels/Settings$Toggle;

    iget-boolean v1, v1, Lcom/igsinreels/Settings$Toggle;->on:Z

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
