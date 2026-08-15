.class Lcom/igsinreels/Gate$TouchFilter$1;
.super Ljava/lang/Object;
.source "Gate.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/igsinreels/Gate$TouchFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/igsinreels/Gate$TouchFilter;


# direct methods
.method constructor <init>(Lcom/igsinreels/Gate$TouchFilter;)V
    .registers 2

    .line 1357
    iput-object p1, p0, Lcom/igsinreels/Gate$TouchFilter$1;->this$0:Lcom/igsinreels/Gate$TouchFilter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 1362
    iget-object v0, p0, Lcom/igsinreels/Gate$TouchFilter$1;->this$0:Lcom/igsinreels/Gate$TouchFilter;

    invoke-static {v0}, Lcom/igsinreels/Gate$TouchFilter;->-$$Nest$fgettracking(Lcom/igsinreels/Gate$TouchFilter;)Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/igsinreels/Gate$TouchFilter$1;->this$0:Lcom/igsinreels/Gate$TouchFilter;

    invoke-static {v0}, Lcom/igsinreels/Gate$TouchFilter;->-$$Nest$fgetmoved(Lcom/igsinreels/Gate$TouchFilter;)Z

    move-result v0

    if-nez v0, :cond_1d

    iget-object v0, p0, Lcom/igsinreels/Gate$TouchFilter$1;->this$0:Lcom/igsinreels/Gate$TouchFilter;

    invoke-static {v0}, Lcom/igsinreels/Gate$TouchFilter;->-$$Nest$fgetcancelled(Lcom/igsinreels/Gate$TouchFilter;)Z

    move-result v0

    if-nez v0, :cond_1d

    iget-object v0, p0, Lcom/igsinreels/Gate$TouchFilter$1;->this$0:Lcom/igsinreels/Gate$TouchFilter;

    invoke-static {v0}, Lcom/igsinreels/Gate$TouchFilter;->-$$Nest$mcancelGesture(Lcom/igsinreels/Gate$TouchFilter;)V

    :cond_1d
    return-void
.end method
