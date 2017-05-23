.class public abstract Landroid/hardware/input/IInputManager$Stub;
.super Landroid/os/Binder;
.source "IInputManager.java"

# interfaces
.implements Landroid/hardware/input/IInputManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/input/IInputManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/input/IInputManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.hardware.input.IInputManager"

.field static final TRANSACTION_addKeyboardLayoutForInputDevice:I = 0x11

.field static final TRANSACTION_cancelVibrate:I = 0x17

.field static final TRANSACTION_getCurrentKeyboardLayoutForInputDevice:I = 0xe

.field static final TRANSACTION_getInputDevice:I = 0x1

.field static final TRANSACTION_getInputDeviceIds:I = 0x2

.field static final TRANSACTION_getKeyboardLayout:I = 0xd

.field static final TRANSACTION_getKeyboardLayouts:I = 0xc

.field static final TRANSACTION_getKeyboardLayoutsForInputDevice:I = 0x10

.field static final TRANSACTION_getTouchCalibrationForInputDevice:I = 0xa

.field static final TRANSACTION_getTvDisplayBounds:I = 0x9

.field static final TRANSACTION_getTvMousePosition:I = 0x7

.field static final TRANSACTION_hasKeys:I = 0x3

.field static final TRANSACTION_injectInputEvent:I = 0x5

.field static final TRANSACTION_injectInputEvent2:I = 0x6

.field static final TRANSACTION_isInTabletMode:I = 0x14

.field static final TRANSACTION_registerInputDevicesChangedListener:I = 0x13

.field static final TRANSACTION_registerTabletModeChangedListener:I = 0x15

.field static final TRANSACTION_removeKeyboardLayoutForInputDevice:I = 0x12

.field static final TRANSACTION_setCurrentKeyboardLayoutForInputDevice:I = 0xf

.field static final TRANSACTION_setTouchCalibrationForInputDevice:I = 0xb

.field static final TRANSACTION_setTvMousePosition:I = 0x8

.field static final TRANSACTION_tryPointerSpeed:I = 0x4

.field static final TRANSACTION_vibrate:I = 0x16


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    const-string v0, "android.hardware.input.IInputManager"

    invoke-virtual {p0, p0, v0}, Landroid/hardware/input/IInputManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/hardware/input/IInputManager;
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
    const-string v1, "android.hardware.input.IInputManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 28
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/hardware/input/IInputManager;

    if-eqz v1, :cond_1

    .line 29
    check-cast v0, Landroid/hardware/input/IInputManager;

    goto :goto_0

    .line 31
    :cond_1
    new-instance v0, Landroid/hardware/input/IInputManager$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/hardware/input/IInputManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 39
    sparse-switch p1, :sswitch_data_0

    .line 356
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v7

    :goto_0
    return v7

    .line 43
    :sswitch_0
    const-string v6, "android.hardware.input.IInputManager"

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 48
    :sswitch_1
    const-string v8, "android.hardware.input.IInputManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 51
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Landroid/hardware/input/IInputManager$Stub;->getInputDevice(I)Landroid/view/InputDevice;

    move-result-object v5

    .line 52
    .local v5, "_result":Landroid/view/InputDevice;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 53
    if-eqz v5, :cond_0

    .line 54
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 55
    invoke-virtual {v5, p3, v7}, Landroid/view/InputDevice;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 58
    :cond_0
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 64
    .end local v0    # "_arg0":I
    .end local v5    # "_result":Landroid/view/InputDevice;
    :sswitch_2
    const-string v6, "android.hardware.input.IInputManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 65
    invoke-virtual {p0}, Landroid/hardware/input/IInputManager$Stub;->getInputDeviceIds()[I

    move-result-object v5

    .line 66
    .local v5, "_result":[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 67
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeIntArray([I)V

    goto :goto_0

    .line 72
    .end local v5    # "_result":[I
    :sswitch_3
    const-string v8, "android.hardware.input.IInputManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 76
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 78
    .local v1, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    .line 80
    .local v2, "_arg2":[I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 81
    .local v4, "_arg3_length":I
    if-gez v4, :cond_2

    .line 82
    const/4 v3, 0x0

    .line 87
    .local v3, "_arg3":[Z
    :goto_1
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/hardware/input/IInputManager$Stub;->hasKeys(II[I[Z)Z

    move-result v5

    .line 88
    .local v5, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 89
    if-eqz v5, :cond_1

    move v6, v7

    :cond_1
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 90
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    goto :goto_0

    .line 85
    .end local v3    # "_arg3":[Z
    .end local v5    # "_result":Z
    :cond_2
    new-array v3, v4, [Z

    .restart local v3    # "_arg3":[Z
    goto :goto_1

    .line 95
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":[I
    .end local v3    # "_arg3":[Z
    .end local v4    # "_arg3_length":I
    :sswitch_4
    const-string v6, "android.hardware.input.IInputManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 97
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 98
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/hardware/input/IInputManager$Stub;->tryPointerSpeed(I)V

    .line 99
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 104
    .end local v0    # "_arg0":I
    :sswitch_5
    const-string v8, "android.hardware.input.IInputManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 106
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_4

    .line 107
    sget-object v8, Landroid/view/InputEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/InputEvent;

    .line 113
    .local v0, "_arg0":Landroid/view/InputEvent;
    :goto_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 114
    .restart local v1    # "_arg1":I
    invoke-virtual {p0, v0, v1}, Landroid/hardware/input/IInputManager$Stub;->injectInputEvent(Landroid/view/InputEvent;I)Z

    move-result v5

    .line 115
    .restart local v5    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 116
    if-eqz v5, :cond_3

    move v6, v7

    :cond_3
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 110
    .end local v0    # "_arg0":Landroid/view/InputEvent;
    .end local v1    # "_arg1":I
    .end local v5    # "_result":Z
    :cond_4
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/view/InputEvent;
    goto :goto_2

    .line 121
    .end local v0    # "_arg0":Landroid/view/InputEvent;
    :sswitch_6
    const-string v8, "android.hardware.input.IInputManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 123
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_6

    .line 124
    sget-object v8, Landroid/view/InputEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/InputEvent;

    .line 130
    .restart local v0    # "_arg0":Landroid/view/InputEvent;
    :goto_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 132
    .restart local v1    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 133
    .local v2, "_arg2":I
    invoke-virtual {p0, v0, v1, v2}, Landroid/hardware/input/IInputManager$Stub;->injectInputEvent2(Landroid/view/InputEvent;II)Z

    move-result v5

    .line 134
    .restart local v5    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 135
    if-eqz v5, :cond_5

    move v6, v7

    :cond_5
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 127
    .end local v0    # "_arg0":Landroid/view/InputEvent;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v5    # "_result":Z
    :cond_6
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/view/InputEvent;
    goto :goto_3

    .line 140
    .end local v0    # "_arg0":Landroid/view/InputEvent;
    :sswitch_7
    const-string v6, "android.hardware.input.IInputManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 141
    invoke-virtual {p0}, Landroid/hardware/input/IInputManager$Stub;->getTvMousePosition()[I

    move-result-object v5

    .line 142
    .local v5, "_result":[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 143
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeIntArray([I)V

    goto/16 :goto_0

    .line 148
    .end local v5    # "_result":[I
    :sswitch_8
    const-string v6, "android.hardware.input.IInputManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 150
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 152
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 153
    .restart local v1    # "_arg1":I
    invoke-virtual {p0, v0, v1}, Landroid/hardware/input/IInputManager$Stub;->setTvMousePosition(II)V

    .line 154
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 159
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :sswitch_9
    const-string v6, "android.hardware.input.IInputManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 160
    invoke-virtual {p0}, Landroid/hardware/input/IInputManager$Stub;->getTvDisplayBounds()[I

    move-result-object v5

    .line 161
    .restart local v5    # "_result":[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 162
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeIntArray([I)V

    goto/16 :goto_0

    .line 167
    .end local v5    # "_result":[I
    :sswitch_a
    const-string v8, "android.hardware.input.IInputManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 169
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 171
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 172
    .restart local v1    # "_arg1":I
    invoke-virtual {p0, v0, v1}, Landroid/hardware/input/IInputManager$Stub;->getTouchCalibrationForInputDevice(Ljava/lang/String;I)Landroid/hardware/input/TouchCalibration;

    move-result-object v5

    .line 173
    .local v5, "_result":Landroid/hardware/input/TouchCalibration;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 174
    if-eqz v5, :cond_7

    .line 175
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 176
    invoke-virtual {v5, p3, v7}, Landroid/hardware/input/TouchCalibration;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 179
    :cond_7
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 185
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v5    # "_result":Landroid/hardware/input/TouchCalibration;
    :sswitch_b
    const-string v6, "android.hardware.input.IInputManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 187
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 189
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 191
    .restart local v1    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_8

    .line 192
    sget-object v6, Landroid/hardware/input/TouchCalibration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/input/TouchCalibration;

    .line 197
    .local v2, "_arg2":Landroid/hardware/input/TouchCalibration;
    :goto_4
    invoke-virtual {p0, v0, v1, v2}, Landroid/hardware/input/IInputManager$Stub;->setTouchCalibrationForInputDevice(Ljava/lang/String;ILandroid/hardware/input/TouchCalibration;)V

    .line 198
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 195
    .end local v2    # "_arg2":Landroid/hardware/input/TouchCalibration;
    :cond_8
    const/4 v2, 0x0

    .restart local v2    # "_arg2":Landroid/hardware/input/TouchCalibration;
    goto :goto_4

    .line 203
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Landroid/hardware/input/TouchCalibration;
    :sswitch_c
    const-string v6, "android.hardware.input.IInputManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 204
    invoke-virtual {p0}, Landroid/hardware/input/IInputManager$Stub;->getKeyboardLayouts()[Landroid/hardware/input/KeyboardLayout;

    move-result-object v5

    .line 205
    .local v5, "_result":[Landroid/hardware/input/KeyboardLayout;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 206
    invoke-virtual {p3, v5, v7}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    goto/16 :goto_0

    .line 211
    .end local v5    # "_result":[Landroid/hardware/input/KeyboardLayout;
    :sswitch_d
    const-string v8, "android.hardware.input.IInputManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 213
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 214
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/hardware/input/IInputManager$Stub;->getKeyboardLayout(Ljava/lang/String;)Landroid/hardware/input/KeyboardLayout;

    move-result-object v5

    .line 215
    .local v5, "_result":Landroid/hardware/input/KeyboardLayout;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 216
    if-eqz v5, :cond_9

    .line 217
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 218
    invoke-virtual {v5, p3, v7}, Landroid/hardware/input/KeyboardLayout;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 221
    :cond_9
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 227
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v5    # "_result":Landroid/hardware/input/KeyboardLayout;
    :sswitch_e
    const-string v6, "android.hardware.input.IInputManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 229
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_a

    .line 230
    sget-object v6, Landroid/hardware/input/InputDeviceIdentifier;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/input/InputDeviceIdentifier;

    .line 235
    .local v0, "_arg0":Landroid/hardware/input/InputDeviceIdentifier;
    :goto_5
    invoke-virtual {p0, v0}, Landroid/hardware/input/IInputManager$Stub;->getCurrentKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;)Ljava/lang/String;

    move-result-object v5

    .line 236
    .local v5, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 237
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 233
    .end local v0    # "_arg0":Landroid/hardware/input/InputDeviceIdentifier;
    .end local v5    # "_result":Ljava/lang/String;
    :cond_a
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/hardware/input/InputDeviceIdentifier;
    goto :goto_5

    .line 242
    .end local v0    # "_arg0":Landroid/hardware/input/InputDeviceIdentifier;
    :sswitch_f
    const-string v6, "android.hardware.input.IInputManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 244
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_b

    .line 245
    sget-object v6, Landroid/hardware/input/InputDeviceIdentifier;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/input/InputDeviceIdentifier;

    .line 251
    .restart local v0    # "_arg0":Landroid/hardware/input/InputDeviceIdentifier;
    :goto_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 252
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Landroid/hardware/input/IInputManager$Stub;->setCurrentKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;Ljava/lang/String;)V

    .line 253
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 248
    .end local v0    # "_arg0":Landroid/hardware/input/InputDeviceIdentifier;
    .end local v1    # "_arg1":Ljava/lang/String;
    :cond_b
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/hardware/input/InputDeviceIdentifier;
    goto :goto_6

    .line 258
    .end local v0    # "_arg0":Landroid/hardware/input/InputDeviceIdentifier;
    :sswitch_10
    const-string v6, "android.hardware.input.IInputManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 260
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_c

    .line 261
    sget-object v6, Landroid/hardware/input/InputDeviceIdentifier;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/input/InputDeviceIdentifier;

    .line 266
    .restart local v0    # "_arg0":Landroid/hardware/input/InputDeviceIdentifier;
    :goto_7
    invoke-virtual {p0, v0}, Landroid/hardware/input/IInputManager$Stub;->getKeyboardLayoutsForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;)[Ljava/lang/String;

    move-result-object v5

    .line 267
    .local v5, "_result":[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 268
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    goto/16 :goto_0

    .line 264
    .end local v0    # "_arg0":Landroid/hardware/input/InputDeviceIdentifier;
    .end local v5    # "_result":[Ljava/lang/String;
    :cond_c
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/hardware/input/InputDeviceIdentifier;
    goto :goto_7

    .line 273
    .end local v0    # "_arg0":Landroid/hardware/input/InputDeviceIdentifier;
    :sswitch_11
    const-string v6, "android.hardware.input.IInputManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 275
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_d

    .line 276
    sget-object v6, Landroid/hardware/input/InputDeviceIdentifier;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/input/InputDeviceIdentifier;

    .line 282
    .restart local v0    # "_arg0":Landroid/hardware/input/InputDeviceIdentifier;
    :goto_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 283
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Landroid/hardware/input/IInputManager$Stub;->addKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;Ljava/lang/String;)V

    .line 284
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 279
    .end local v0    # "_arg0":Landroid/hardware/input/InputDeviceIdentifier;
    .end local v1    # "_arg1":Ljava/lang/String;
    :cond_d
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/hardware/input/InputDeviceIdentifier;
    goto :goto_8

    .line 289
    .end local v0    # "_arg0":Landroid/hardware/input/InputDeviceIdentifier;
    :sswitch_12
    const-string v6, "android.hardware.input.IInputManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 291
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_e

    .line 292
    sget-object v6, Landroid/hardware/input/InputDeviceIdentifier;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/input/InputDeviceIdentifier;

    .line 298
    .restart local v0    # "_arg0":Landroid/hardware/input/InputDeviceIdentifier;
    :goto_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 299
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Landroid/hardware/input/IInputManager$Stub;->removeKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;Ljava/lang/String;)V

    .line 300
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 295
    .end local v0    # "_arg0":Landroid/hardware/input/InputDeviceIdentifier;
    .end local v1    # "_arg1":Ljava/lang/String;
    :cond_e
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/hardware/input/InputDeviceIdentifier;
    goto :goto_9

    .line 305
    .end local v0    # "_arg0":Landroid/hardware/input/InputDeviceIdentifier;
    :sswitch_13
    const-string v6, "android.hardware.input.IInputManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 307
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/hardware/input/IInputDevicesChangedListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/input/IInputDevicesChangedListener;

    move-result-object v0

    .line 308
    .local v0, "_arg0":Landroid/hardware/input/IInputDevicesChangedListener;
    invoke-virtual {p0, v0}, Landroid/hardware/input/IInputManager$Stub;->registerInputDevicesChangedListener(Landroid/hardware/input/IInputDevicesChangedListener;)V

    .line 309
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 314
    .end local v0    # "_arg0":Landroid/hardware/input/IInputDevicesChangedListener;
    :sswitch_14
    const-string v6, "android.hardware.input.IInputManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 315
    invoke-virtual {p0}, Landroid/hardware/input/IInputManager$Stub;->isInTabletMode()I

    move-result v5

    .line 316
    .local v5, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 317
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 322
    .end local v5    # "_result":I
    :sswitch_15
    const-string v6, "android.hardware.input.IInputManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 324
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/hardware/input/ITabletModeChangedListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/input/ITabletModeChangedListener;

    move-result-object v0

    .line 325
    .local v0, "_arg0":Landroid/hardware/input/ITabletModeChangedListener;
    invoke-virtual {p0, v0}, Landroid/hardware/input/IInputManager$Stub;->registerTabletModeChangedListener(Landroid/hardware/input/ITabletModeChangedListener;)V

    .line 326
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 331
    .end local v0    # "_arg0":Landroid/hardware/input/ITabletModeChangedListener;
    :sswitch_16
    const-string v6, "android.hardware.input.IInputManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 333
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 335
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v1

    .line 337
    .local v1, "_arg1":[J
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 339
    .local v2, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 340
    .local v3, "_arg3":Landroid/os/IBinder;
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/hardware/input/IInputManager$Stub;->vibrate(I[JILandroid/os/IBinder;)V

    .line 341
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 346
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":[J
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":Landroid/os/IBinder;
    :sswitch_17
    const-string v6, "android.hardware.input.IInputManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 348
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 350
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 351
    .local v1, "_arg1":Landroid/os/IBinder;
    invoke-virtual {p0, v0, v1}, Landroid/hardware/input/IInputManager$Stub;->cancelVibrate(ILandroid/os/IBinder;)V

    .line 352
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 39
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
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x14 -> :sswitch_14
        0x15 -> :sswitch_15
        0x16 -> :sswitch_16
        0x17 -> :sswitch_17
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
