.class Lcom/igsinreels/Settings$8;
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
.field final synthetic val$apply:Ljava/lang/Runnable;

.field final synthetic val$enabled:[Z

.field final synthetic val$key:Ljava/lang/String;

.field final synthetic val$prefs:Landroid/content/SharedPreferences;

.field final synthetic val$t:Lcom/igsinreels/Settings$Toggle;


# direct methods
.method constructor <init>([ZLcom/igsinreels/Settings$Toggle;Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/Runnable;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 510
    iput-object p1, p0, Lcom/igsinreels/Settings$8;->val$enabled:[Z

    iput-object p2, p0, Lcom/igsinreels/Settings$8;->val$t:Lcom/igsinreels/Settings$Toggle;

    iput-object p3, p0, Lcom/igsinreels/Settings$8;->val$prefs:Landroid/content/SharedPreferences;

    iput-object p4, p0, Lcom/igsinreels/Settings$8;->val$key:Ljava/lang/String;

    iput-object p5, p0, Lcom/igsinreels/Settings$8;->val$apply:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    .line 513
    iget-object p1, p0, Lcom/igsinreels/Settings$8;->val$enabled:[Z

    const/4 v0, 0x0

    aget-boolean v1, p1, v0

    xor-int/lit8 v1, v1, 0x1

    aput-boolean v1, p1, v0

    .line 514
    iget-object p1, p0, Lcom/igsinreels/Settings$8;->val$t:Lcom/igsinreels/Settings$Toggle;

    invoke-virtual {p1, v1}, Lcom/igsinreels/Settings$Toggle;->setOn(Z)V

    .line 515
    iget-object p1, p0, Lcom/igsinreels/Settings$8;->val$prefs:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    iget-object v1, p0, Lcom/igsinreels/Settings$8;->val$key:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_on"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/igsinreels/Settings$8;->val$enabled:[Z

    aget-boolean v0, v2, v0

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 516
    iget-object p1, p0, Lcom/igsinreels/Settings$8;->val$apply:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method
