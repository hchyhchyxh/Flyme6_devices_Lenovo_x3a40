.class final Lcom/android/server/am/TvTaskNotify$H;
.super Landroid/os/Handler;
.source "TvTaskNotify.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/TvTaskNotify;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "H"
.end annotation


# static fields
.field private static final SHOW_REMOTOR:I = 0x3


# instance fields
.field final synthetic this$0:Lcom/android/server/am/TvTaskNotify;


# direct methods
.method private constructor <init>(Lcom/android/server/am/TvTaskNotify;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lcom/android/server/am/TvTaskNotify$H;->this$0:Lcom/android/server/am/TvTaskNotify;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/am/TvTaskNotify;Lcom/android/server/am/TvTaskNotify$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/am/TvTaskNotify;
    .param p2, "x1"    # Lcom/android/server/am/TvTaskNotify$1;

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/android/server/am/TvTaskNotify$H;-><init>(Lcom/android/server/am/TvTaskNotify;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 59
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 64
    :goto_0
    return-void

    .line 61
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/am/TvTaskNotify$H;->this$0:Lcom/android/server/am/TvTaskNotify;

    invoke-virtual {v0}, Lcom/android/server/am/TvTaskNotify;->handleStartRemoteController()V

    goto :goto_0

    .line 59
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method
