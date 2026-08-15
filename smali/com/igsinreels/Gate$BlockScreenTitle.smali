.class final Lcom/igsinreels/Gate$BlockScreenTitle;
.super Ljava/lang/Object;
.source "Gate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/igsinreels/Gate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "BlockScreenTitle"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 2053
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static get()Ljava/lang/String;
    .registers 1

    const-string v0, "Reels"

    return-object v0
.end method
