.class final Lcom/peel/SmartIrGlobal$TransmitCallbackDelegate;
.super Landroid/os/Handler;
.source "SmartIrGlobal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/peel/SmartIrGlobal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "TransmitCallbackDelegate"
.end annotation


# instance fields
.field private final mListener:Lcom/peel/SmartIr$TransmitCallback;


# direct methods
.method public constructor <init>(Lcom/peel/SmartIr$TransmitCallback;Landroid/os/Handler;)V
    .locals 3
    .param p1, "listener"    # Lcom/peel/SmartIr$TransmitCallback;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 223
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    :goto_0
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 224
    iput-object p1, p0, Lcom/peel/SmartIrGlobal$TransmitCallbackDelegate;->mListener:Lcom/peel/SmartIr$TransmitCallback;

    .line 225
    return-void

    .line 223
    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public clearEvents()V
    .locals 1

    .prologue
    .line 245
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/peel/SmartIrGlobal$TransmitCallbackDelegate;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 246
    return-void
.end method

.method public getListener()Lcom/peel/SmartIr$TransmitCallback;
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lcom/peel/SmartIrGlobal$TransmitCallbackDelegate;->mListener:Lcom/peel/SmartIr$TransmitCallback;

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 250
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 258
    :goto_0
    return-void

    .line 252
    :pswitch_0
    iget-object v1, p0, Lcom/peel/SmartIrGlobal$TransmitCallbackDelegate;->mListener:Lcom/peel/SmartIr$TransmitCallback;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/peel/SmartIrFailure;

    invoke-interface {v1, v0}, Lcom/peel/SmartIr$TransmitCallback;->onFailure(Lcom/peel/SmartIrFailure;)V

    goto :goto_0

    .line 255
    :pswitch_1
    iget-object v0, p0, Lcom/peel/SmartIrGlobal$TransmitCallbackDelegate;->mListener:Lcom/peel/SmartIr$TransmitCallback;

    invoke-interface {v0}, Lcom/peel/SmartIr$TransmitCallback;->onSuccess()V

    goto :goto_0

    .line 250
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public sendTransmitFailedEvent(ILcom/peel/SmartIrFailure;)V
    .locals 1
    .param p1, "event"    # I
    .param p2, "failure"    # Lcom/peel/SmartIrFailure;

    .prologue
    .line 238
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 239
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->what:I

    .line 240
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 241
    invoke-virtual {p0, v0}, Lcom/peel/SmartIrGlobal$TransmitCallbackDelegate;->sendMessage(Landroid/os/Message;)Z

    .line 242
    return-void
.end method

.method public sendTransmitSucessEvent(I)V
    .locals 1
    .param p1, "event"    # I

    .prologue
    .line 232
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 233
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->what:I

    .line 234
    invoke-virtual {p0, v0}, Lcom/peel/SmartIrGlobal$TransmitCallbackDelegate;->sendMessage(Landroid/os/Message;)Z

    .line 235
    return-void
.end method
