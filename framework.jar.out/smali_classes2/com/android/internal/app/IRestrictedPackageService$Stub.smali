.class public abstract Lcom/android/internal/app/IRestrictedPackageService$Stub;
.super Landroid/os/Binder;
.source "IRestrictedPackageService.java"

# interfaces
.implements Lcom/android/internal/app/IRestrictedPackageService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/IRestrictedPackageService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/IRestrictedPackageService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.app.IRestrictedPackageService"

.field static final TRANSACTION_getRestrictedPackages:I = 0x4

.field static final TRANSACTION_isPackageRestricted:I = 0x2

.field static final TRANSACTION_isPackageStopped:I = 0x5

.field static final TRANSACTION_isUidRestricted:I = 0x3

.field static final TRANSACTION_resumeStoppedPackage:I = 0x7

.field static final TRANSACTION_setPackageRestricted:I = 0x1

.field static final TRANSACTION_setPackageStopped:I = 0x6


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 17
    const-string v0, "com.android.internal.app.IRestrictedPackageService"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/app/IRestrictedPackageService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 18
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IRestrictedPackageService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 25
    if-nez p0, :cond_0

    .line 26
    const/4 v0, 0x0

    .line 32
    :goto_0
    return-object v0

    .line 28
    :cond_0
    const-string v1, "com.android.internal.app.IRestrictedPackageService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 29
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/internal/app/IRestrictedPackageService;

    if-eqz v1, :cond_1

    .line 30
    check-cast v0, Lcom/android/internal/app/IRestrictedPackageService;

    goto :goto_0

    .line 32
    :cond_1
    new-instance v0, Lcom/android/internal/app/IRestrictedPackageService$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/android/internal/app/IRestrictedPackageService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 36
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
    const/4 v4, 0x0

    const/4 v8, 0x1

    .line 40
    sparse-switch p1, :sswitch_data_0

    .line 141
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v8

    :goto_0
    return v8

    .line 44
    :sswitch_0
    const-string v0, "com.android.internal.app.IRestrictedPackageService"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 49
    :sswitch_1
    const-string v0, "com.android.internal.app.IRestrictedPackageService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 51
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 53
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 55
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 57
    .local v3, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    move v4, v8

    .line 59
    .local v4, "_arg3":Z
    :cond_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .local v5, "_arg4":I
    move-object v0, p0

    .line 60
    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/app/IRestrictedPackageService$Stub;->setPackageRestricted(Ljava/lang/String;IIZI)V

    .line 61
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 66
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":Z
    .end local v5    # "_arg4":I
    :sswitch_2
    const-string v0, "com.android.internal.app.IRestrictedPackageService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 70
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 72
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 73
    .restart local v3    # "_arg2":I
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/app/IRestrictedPackageService$Stub;->isPackageRestricted(Ljava/lang/String;II)Z

    move-result v6

    .line 74
    .local v6, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 75
    if-eqz v6, :cond_1

    move v4, v8

    :cond_1
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 80
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v6    # "_result":Z
    :sswitch_3
    const-string v0, "com.android.internal.app.IRestrictedPackageService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 84
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 86
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 87
    .restart local v3    # "_arg2":I
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/app/IRestrictedPackageService$Stub;->isUidRestricted(III)Z

    move-result v6

    .line 88
    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 89
    if-eqz v6, :cond_2

    move v4, v8

    :cond_2
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 94
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v6    # "_result":Z
    :sswitch_4
    const-string v0, "com.android.internal.app.IRestrictedPackageService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 96
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 98
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 99
    .restart local v2    # "_arg1":I
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/app/IRestrictedPackageService$Stub;->getRestrictedPackages(II)Ljava/util/List;

    move-result-object v7

    .line 100
    .local v7, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/app/RestrictedPackageInfo;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 101
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    goto :goto_0

    .line 106
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v7    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/app/RestrictedPackageInfo;>;"
    :sswitch_5
    const-string v0, "com.android.internal.app.IRestrictedPackageService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 108
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 110
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 111
    .restart local v2    # "_arg1":I
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/app/IRestrictedPackageService$Stub;->isPackageStopped(Ljava/lang/String;I)Z

    move-result v6

    .line 112
    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 113
    if-eqz v6, :cond_3

    move v4, v8

    :cond_3
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 118
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v6    # "_result":Z
    :sswitch_6
    const-string v0, "com.android.internal.app.IRestrictedPackageService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 120
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 122
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_4

    move v2, v8

    .line 124
    .local v2, "_arg1":Z
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 125
    .restart local v3    # "_arg2":I
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/app/IRestrictedPackageService$Stub;->setPackageStopped(Ljava/lang/String;ZI)V

    .line 126
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v2    # "_arg1":Z
    .end local v3    # "_arg2":I
    :cond_4
    move v2, v4

    .line 122
    goto :goto_1

    .line 131
    .end local v1    # "_arg0":Ljava/lang/String;
    :sswitch_7
    const-string v0, "com.android.internal.app.IRestrictedPackageService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 133
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 135
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 136
    .local v2, "_arg1":I
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/app/IRestrictedPackageService$Stub;->resumeStoppedPackage(Ljava/lang/String;I)V

    .line 137
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 40
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
