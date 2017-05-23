.class public final Lcom/peel/SmartIr;
.super Ljava/lang/Object;
.source "SmartIr.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/peel/SmartIr$ReceiveCallback;,
        Lcom/peel/SmartIr$TransmitCallback;,
        Lcom/peel/SmartIr$IntervalType;,
        Lcom/peel/SmartIr$TransmitMode;
    }
.end annotation


# static fields
.field public static final RESPONSE_ALL_OK:I = 0x0

.field public static final RESPONSE_INIT_FAILURE:I = 0x1

.field public static final RESPONSE_NULL_CALLBACK:I = 0x6a

.field public static final RESPONSE_READ_MODE_FAILURE:I = 0x3

.field public static final RESPONSE_READ_MSG_FAILURE:I = 0x5

.field public static final RESPONSE_RECEIVE_ALREADY_CANCELED:I = 0x69

.field public static final RESPONSE_RECEIVE_FAILURE:I = 0x67

.field public static final RESPONSE_RECEIVE_IN_PROGRESS:I = 0x68

.field public static final RESPONSE_RECEIVE_NOT_ENOUGH_MEMORY:I = 0x66

.field public static final RESPONSE_TRANSMIT_ALREADY_CANCELED:I = 0x65

.field public static final RESPONSE_TRANSMIT_FAILURE:I = 0x7

.field public static final RESPONSE_TRANSMIT_IN_PROGRESS:I = 0x64

.field public static final RESPONSE_WRITE_BITS_FAILURE:I = 0x2

.field public static final RESPONSE_WRITE_MODE_FAILURE:I = 0x4

.field public static final RESPONSE_WRITE_MSG_FAILURE:I = 0x6

.field private static final TAG:Ljava/lang/String; = "SmartIr"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mGlobal:Lcom/peel/SmartIrGlobal;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/peel/SmartIr;->mContext:Landroid/content/Context;

    .line 46
    invoke-static {}, Lcom/peel/SmartIrGlobal;->getInstance()Lcom/peel/SmartIrGlobal;

    move-result-object v0

    iput-object v0, p0, Lcom/peel/SmartIr;->mGlobal:Lcom/peel/SmartIrGlobal;

    .line 47
    return-void
.end method


# virtual methods
.method public cancelContinuousTransmit()I
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/peel/SmartIr;->mGlobal:Lcom/peel/SmartIrGlobal;

    invoke-virtual {v0}, Lcom/peel/SmartIrGlobal;->cancelContinuousTransmit()I

    move-result v0

    return v0
.end method

.method public cancelReceiving()I
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/peel/SmartIr;->mGlobal:Lcom/peel/SmartIrGlobal;

    invoke-virtual {v0}, Lcom/peel/SmartIrGlobal;->cancelReceiving()I

    move-result v0

    return v0
.end method

.method public hasIrEmitter()Z
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/peel/SmartIr;->mGlobal:Lcom/peel/SmartIrGlobal;

    invoke-virtual {v0}, Lcom/peel/SmartIrGlobal;->hasIrEmitter()Z

    move-result v0

    return v0
.end method

.method public receive(I)I
    .locals 1
    .param p1, "timeoutSeconds"    # I

    .prologue
    .line 60
    iget-object v0, p0, Lcom/peel/SmartIr;->mGlobal:Lcom/peel/SmartIrGlobal;

    invoke-virtual {v0, p1}, Lcom/peel/SmartIrGlobal;->receive(I)I

    move-result v0

    return v0
.end method

.method public registerReceiveCallback(Lcom/peel/SmartIr$ReceiveCallback;Landroid/os/Handler;)I
    .locals 1
    .param p1, "listener"    # Lcom/peel/SmartIr$ReceiveCallback;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/peel/SmartIr;->mGlobal:Lcom/peel/SmartIrGlobal;

    invoke-virtual {v0, p1, p2}, Lcom/peel/SmartIrGlobal;->registerReceiveCallback(Lcom/peel/SmartIr$ReceiveCallback;Landroid/os/Handler;)I

    move-result v0

    return v0
.end method

.method public registerTransmitCallback(Lcom/peel/SmartIr$TransmitCallback;Landroid/os/Handler;)I
    .locals 1
    .param p1, "listener"    # Lcom/peel/SmartIr$TransmitCallback;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/peel/SmartIr;->mGlobal:Lcom/peel/SmartIrGlobal;

    invoke-virtual {v0, p1, p2}, Lcom/peel/SmartIrGlobal;->registerTransmitCallback(Lcom/peel/SmartIr$TransmitCallback;Landroid/os/Handler;)I

    move-result v0

    return v0
.end method

.method public transmit(ILjava/lang/String;Ljava/lang/String;III)I
    .locals 7
    .param p1, "carrierFrequency"    # I
    .param p2, "mainPattern"    # Ljava/lang/String;
    .param p3, "repeatPattern"    # Ljava/lang/String;
    .param p4, "intervalType"    # I
    .param p5, "transmitMode"    # I
    .param p6, "repeatCount"    # I

    .prologue
    .line 55
    iget-object v0, p0, Lcom/peel/SmartIr;->mGlobal:Lcom/peel/SmartIrGlobal;

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/peel/SmartIrGlobal;->transmit(ILjava/lang/String;Ljava/lang/String;III)I

    move-result v0

    return v0
.end method

.method public unregisterReceiveCallback(Lcom/peel/SmartIr$ReceiveCallback;)I
    .locals 1
    .param p1, "listener"    # Lcom/peel/SmartIr$ReceiveCallback;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/peel/SmartIr;->mGlobal:Lcom/peel/SmartIrGlobal;

    invoke-virtual {v0, p1}, Lcom/peel/SmartIrGlobal;->unregisterReceiveCallback(Lcom/peel/SmartIr$ReceiveCallback;)I

    move-result v0

    return v0
.end method

.method public unregisterTransmitCallback(Lcom/peel/SmartIr$TransmitCallback;)I
    .locals 1
    .param p1, "listener"    # Lcom/peel/SmartIr$TransmitCallback;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/peel/SmartIr;->mGlobal:Lcom/peel/SmartIrGlobal;

    invoke-virtual {v0, p1}, Lcom/peel/SmartIrGlobal;->unregisterTransmitCallback(Lcom/peel/SmartIr$TransmitCallback;)I

    move-result v0

    return v0
.end method
