.class Lcom/igsinreels/Gate$SingleReel$1;
.super Ljava/lang/Object;
.source "Gate.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/igsinreels/Gate$SingleReel;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/igsinreels/Gate$SingleReel;

.field final synthetic val$d:J


# direct methods
.method constructor <init>(Lcom/igsinreels/Gate$SingleReel;J)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1731
    iput-object p1, p0, Lcom/igsinreels/Gate$SingleReel$1;->this$0:Lcom/igsinreels/Gate$SingleReel;

    iput-wide p2, p0, Lcom/igsinreels/Gate$SingleReel$1;->val$d:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 1734
    iget-object v0, p0, Lcom/igsinreels/Gate$SingleReel$1;->this$0:Lcom/igsinreels/Gate$SingleReel;

    invoke-static {v0}, Lcom/igsinreels/Gate$SingleReel;->-$$Nest$fgetfired(Lcom/igsinreels/Gate$SingleReel;)Z

    move-result v0

    if-nez v0, :cond_18

    iget-object v0, p0, Lcom/igsinreels/Gate$SingleReel$1;->this$0:Lcom/igsinreels/Gate$SingleReel;

    iget-wide v1, p0, Lcom/igsinreels/Gate$SingleReel$1;->val$d:J

    const-wide/16 v3, 0x3e8

    cmp-long v1, v1, v3

    if-ltz v1, :cond_14

    const/4 v1, 0x1

    goto :goto_15

    :cond_14
    const/4 v1, 0x0

    :goto_15
    invoke-static {v0, v1}, Lcom/igsinreels/Gate$SingleReel;->-$$Nest$msettle(Lcom/igsinreels/Gate$SingleReel;Z)V

    :cond_18
    return-void
.end method
