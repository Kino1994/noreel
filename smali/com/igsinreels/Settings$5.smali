.class Lcom/igsinreels/Settings$5;
.super Ljava/lang/Object;
.source "Settings.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


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

.field final synthetic val$opt:Ljava/lang/String;

.field final synthetic val$prefs:Landroid/content/SharedPreferences;

.field final synthetic val$sel:Ljava/util/Set;

.field final synthetic val$update:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Ljava/util/Set;Ljava/lang/String;Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/Runnable;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 469
    iput-object p1, p0, Lcom/igsinreels/Settings$5;->val$sel:Ljava/util/Set;

    iput-object p2, p0, Lcom/igsinreels/Settings$5;->val$opt:Ljava/lang/String;

    iput-object p3, p0, Lcom/igsinreels/Settings$5;->val$prefs:Landroid/content/SharedPreferences;

    iput-object p4, p0, Lcom/igsinreels/Settings$5;->val$key:Ljava/lang/String;

    iput-object p5, p0, Lcom/igsinreels/Settings$5;->val$update:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .registers 5

    .line 472
    iget-object p1, p0, Lcom/igsinreels/Settings$5;->val$sel:Ljava/util/Set;

    if-eqz p2, :cond_a

    iget-object p2, p0, Lcom/igsinreels/Settings$5;->val$opt:Ljava/lang/String;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_f

    :cond_a
    iget-object p2, p0, Lcom/igsinreels/Settings$5;->val$opt:Ljava/lang/String;

    invoke-interface {p1, p2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 473
    :goto_f
    iget-object p1, p0, Lcom/igsinreels/Settings$5;->val$prefs:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    iget-object p2, p0, Lcom/igsinreels/Settings$5;->val$key:Ljava/lang/String;

    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/igsinreels/Settings$5;->val$sel:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 474
    iget-object p1, p0, Lcom/igsinreels/Settings$5;->val$update:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method
