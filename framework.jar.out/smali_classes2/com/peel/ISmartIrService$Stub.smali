.class public abstract Lcom/peel/ISmartIrService$Stub;
.super Landroid/os/Binder;
.source "ISmartIrService.java"

# interfaces
.implements Lcom/peel/ISmartIrService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/peel/ISmartIrService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/peel/ISmartIrService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.peel.ISmartIrService"

.field static final TRANSACTION_cancelContinuousTransmit:I = 0x5

.field static final TRANSACTION_cancelReceiving:I = 0x4

.field static final TRANSACTION_hasIrEmitter:I = 0x1

.field static final TRANSACTION_receive:I = 0x3

.field static final TRANSACTION_registerReceiveCallback:I = 0x8

.field static final TRANSACTION_registerTransmitCallback:I = 0x6

.field static final TRANSACTION_transmit:I = 0x2

.field static final TRANSACTION_unregisterReceiveCallback:I = 0x9

.field static final TRANSACTION_unregisterTransmitCallback:I = 0x7


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    const-string v0, "com.peel.ISmartIrService"

    invoke-virtual {p0, p0, v0}, Lcom/peel/ISmartIrService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/peel/ISmartIrService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 24
    if-nez p0, :cond_0

    .line 25
    const/4 v0, 0x0

    .line 31
    :goto_0
    return-object v0

    .line 27
    :cond_0
    const-string v1, "com.peel.ISmartIrService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 28
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/peel/ISmartIrService;

    if-eqz v1, :cond_1

    .line 29
    check-cast v0, Lcom/peel/ISmartIrService;

    goto :goto_0

    .line 31
    :cond_1
    new-instance v0, Lcom/peel/ISmartIrService$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/peel/ISmartIrService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 35
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 9
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    .line 39
    sparse-switch p1, :sswitch_data_0

    .line 141
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v8

    :goto_0
    return v8

    .line 43
    :sswitch_0
    const-string v0, "com.peel.ISmartIrService"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 48
    :sswitch_1
    const-string v0, "com.peel.ISmartIrService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p0}, Lcom/peel/ISmartIrService$Stub;->hasIrEmitter()Z

    move-result v7

    .line 50
    .local v7, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 51
    if-eqz v7, :cond_0

    move v0, v8

    :goto_1
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 56
    .end local v7    # "_result":Z
    :sswitch_2
    const-string v0, "com.peel.ISmartIrService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 58
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 60
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 62
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 64
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 66
    .local v4, "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 68
    .local v5, "_arg4":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .local v6, "_arg5":I
    move-object v0, p0

    .line 69
    invoke-virtual/range {v0 .. v6}, Lcom/peel/ISmartIrService$Stub;->transmit(ILjava/lang/String;Ljava/lang/String;III)I

    move-result v7

    .line 70
    .local v7, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 71
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 76
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":I
    .end local v5    # "_arg4":I
    .end local v6    # "_arg5":I
    .end local v7    # "_result":I
    :sswitch_3
    const-string v0, "com.peel.ISmartIrService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 78
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 79
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lcom/peel/ISmartIrService$Stub;->receive(I)I

    move-result v7

    .line 80
    .restart local v7    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 81
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 86
    .end local v1    # "_arg0":I
    .end local v7    # "_result":I
    :sswitch_4
    const-string v0, "com.peel.ISmartIrService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 87
    invoke-virtual {p0}, Lcom/peel/ISmartIrService$Stub;->cancelReceiving()I

    move-result v7

    .line 88
    .restart local v7    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 89
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 94
    .end local v7    # "_result":I
    :sswitch_5
    const-string v0, "com.peel.ISmartIrService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 95
    invoke-virtual {p0}, Lcom/peel/ISmartIrService$Stub;->cancelContinuousTransmit()I

    move-result v7

    .line 96
    .restart local v7    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 97
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 102
    .end local v7    # "_result":I
    :sswitch_6
    const-string v0, "com.peel.ISmartIrService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 104
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/peel/ITransmitCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/peel/ITransmitCallback;

    move-result-object v1

    .line 105
    .local v1, "_arg0":Lcom/peel/ITransmitCallback;
    invoke-virtual {p0, v1}, Lcom/peel/ISmartIrService$Stub;->registerTransmitCallback(Lcom/peel/ITransmitCallback;)I

    move-result v7

    .line 106
    .restart local v7    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 107
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 112
    .end local v1    # "_arg0":Lcom/peel/ITransmitCallback;
    .end local v7    # "_result":I
    :sswitch_7
    const-string v0, "com.peel.ISmartIrService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 114
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/peel/ITransmitCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/peel/ITransmitCallback;

    move-result-object v1

    .line 115
    .restart local v1    # "_arg0":Lcom/peel/ITransmitCallback;
    invoke-virtual {p0, v1}, Lcom/peel/ISmartIrService$Stub;->unregisterTransmitCallback(Lcom/peel/ITransmitCallback;)I

    move-result v7

    .line 116
    .restart local v7    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 117
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 122
    .end local v1    # "_arg0":Lcom/peel/ITransmitCallback;
    .end local v7    # "_result":I
    :sswitch_8
    const-string v0, "com.peel.ISmartIrService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 124
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/peel/IReceiveCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/peel/IReceiveCallback;

    move-result-object v1

    .line 125
    .local v1, "_arg0":Lcom/peel/IReceiveCallback;
    invoke-virtual {p0, v1}, Lcom/peel/ISmartIrService$Stub;->registerReceiveCallback(Lcom/peel/IReceiveCallback;)I

    move-result v7

    .line 126
    .restart local v7    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 127
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 132
    .end local v1    # "_arg0":Lcom/peel/IReceiveCallback;
    .end local v7    # "_result":I
    :sswitch_9
    const-string v0, "com.peel.ISmartIrService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 134
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/peel/IReceiveCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/peel/IReceiveCallback;

    move-result-object v1

    .line 135
    .restart local v1    # "_arg0":Lcom/peel/IReceiveCallback;
    invoke-virtual {p0, v1}, Lcom/peel/ISmartIrService$Stub;->unregisterReceiveCallback(Lcom/peel/IReceiveCallback;)I

    move-result v7

    .line 136
    .restart local v7    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 137
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 39
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
