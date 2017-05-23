.class Lcom/android/internal/telephony/ITelephony$Stub$Proxy;
.super Ljava/lang/Object;
.source "ITelephony.java"

# interfaces
.implements Lcom/android/internal/telephony/ITelephony;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/ITelephony$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0
    .param p1, "remote"    # Landroid/os/IBinder;

    .prologue
    .line 1542
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1543
    iput-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 1544
    return-void
.end method


# virtual methods
.method public answerRingingCall()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1657
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1658
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1660
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1661
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1662
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1665
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1666
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1668
    return-void

    .line 1665
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1666
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public answerRingingCallForSubscriber(I)V
    .locals 5
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1686
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1687
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1689
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1690
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1691
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x6

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1692
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1695
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1696
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1698
    return-void

    .line 1695
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1696
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 1547
    iget-object v0, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public call(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "number"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1581
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1582
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1584
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1585
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1586
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1587
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1588
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1591
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1592
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1594
    return-void

    .line 1591
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1592
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public canChangeDtmfToneLength()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 4440
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4441
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4444
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4445
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x76

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4446
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4447
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 4450
    .local v2, "_result":Z
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4451
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4453
    return v2

    .line 4450
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4451
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public checkCarrierPrivilegesForPackage(Ljava/lang/String;)I
    .locals 6
    .param p1, "pkgName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4021
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4022
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4025
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4026
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4027
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x66

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4028
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4029
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 4032
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4033
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4035
    return v2

    .line 4032
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4033
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public checkCarrierPrivilegesForPackageAnyPhone(Ljava/lang/String;)I
    .locals 6
    .param p1, "pkgName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4042
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4043
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4046
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4047
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4048
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x67

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4049
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4050
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 4053
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4054
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4056
    return v2

    .line 4053
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4054
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public dial(Ljava/lang/String;)V
    .locals 5
    .param p1, "number"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1561
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1562
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1564
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1565
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1566
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1567
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1570
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1571
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1573
    return-void

    .line 1570
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1571
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public disableDataConnectivity()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 2440
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2441
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2444
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2445
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x27

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2446
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2447
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 2450
    .local v2, "_result":Z
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2451
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2453
    return v2

    .line 2450
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2451
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public disableLocationUpdates()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2384
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2385
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2387
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2388
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x24

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2389
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2392
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2393
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2395
    return-void

    .line 2392
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2393
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public disableLocationUpdatesForSubscriber(I)V
    .locals 5
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2402
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2403
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2405
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2406
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2407
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x25

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2408
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2411
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2412
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2414
    return-void

    .line 2411
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2412
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public enableDataConnectivity()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 2420
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2421
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2424
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2425
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x26

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2426
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2427
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 2430
    .local v2, "_result":Z
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2431
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2433
    return v2

    .line 2430
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2431
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public enableLocationUpdates()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2348
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2349
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2351
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2352
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x22

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2353
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2356
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2357
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2359
    return-void

    .line 2356
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2357
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public enableLocationUpdatesForSubscriber(I)V
    .locals 5
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2366
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2367
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2369
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2370
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2371
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x23

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2372
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2375
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2376
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2378
    return-void

    .line 2375
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2376
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public enableVideoCalling(Z)V
    .locals 5
    .param p1, "enable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 4396
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4397
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4399
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4400
    if-eqz p1, :cond_0

    const/4 v2, 0x1

    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4401
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x74

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4402
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4405
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4406
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4408
    return-void

    .line 4405
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4406
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public endCall()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1602
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1603
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1606
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1607
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1608
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1609
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 1612
    .local v2, "_result":Z
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1613
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1615
    return v2

    .line 1612
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1613
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public endCallForSubscriber(I)Z
    .locals 6
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1624
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1625
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1628
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1629
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1630
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x4

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1631
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1632
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 1635
    .local v2, "_result":Z
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1636
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1638
    return v2

    .line 1635
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1636
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public factoryReset(I)V
    .locals 5
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4656
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4657
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4659
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4660
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4661
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x80

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4662
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4665
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4666
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4668
    return-void

    .line 4665
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4666
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public getActivePhoneType()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2619
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2620
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2623
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2624
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x30

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2625
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2626
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 2629
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2630
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2632
    return v2

    .line 2629
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2630
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public getActivePhoneTypeForSubscriber(I)I
    .locals 6
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2642
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2643
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2646
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2647
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2648
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x31

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2649
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2650
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 2653
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2654
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2656
    return v2

    .line 2653
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2654
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public getAllCellInfo(Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .param p1, "callingPkg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/CellInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3130
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3131
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3134
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3135
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3136
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x46

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3137
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3138
    sget-object v3, Landroid/telephony/CellInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 3141
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3142
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3144
    return-object v2

    .line 3141
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3142
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public getAtr()[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4722
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4723
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4726
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4727
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x83

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4728
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4729
    invoke-virtual {v1}, Landroid/os/Parcel;->createByteArray()[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 4732
    .local v2, "_result":[B
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4733
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4735
    return-object v2

    .line 4732
    .end local v2    # "_result":[B
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4733
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public getAtrUsingSubId(I)[B
    .locals 6
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4743
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4744
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4747
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4748
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4749
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x84

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4750
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4751
    invoke-virtual {v1}, Landroid/os/Parcel;->createByteArray()[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 4754
    .local v2, "_result":[B
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4755
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4757
    return-object v2

    .line 4754
    .end local v2    # "_result":[B
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4755
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public getCalculatedPreferredNetworkType(Ljava/lang/String;)I
    .locals 6
    .param p1, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3681
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3682
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3685
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3686
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3687
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x58

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3688
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3689
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 3692
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3693
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3695
    return v2

    .line 3692
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3693
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public getCallState()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2521
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2522
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2525
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2526
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x2b

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2527
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2528
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 2531
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2532
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2534
    return v2

    .line 2531
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2532
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public getCallStateForSubscriber(I)I
    .locals 6
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2541
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2542
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2545
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2546
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2547
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x2c

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2548
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2549
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 2552
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2553
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2555
    return v2

    .line 2552
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2553
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public getCarrierPackageNamesForIntentAndPhone(Landroid/content/Intent;I)Ljava/util/List;
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "phoneId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4070
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4071
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4074
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4075
    if-eqz p1, :cond_0

    .line 4076
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 4077
    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 4082
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4083
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x68

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4084
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4085
    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 4088
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4089
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4091
    return-object v2

    .line 4080
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 4088
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4089
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public getCarrierPrivilegeStatus()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4001
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4002
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4005
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4006
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x65

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4007
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4008
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 4011
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4012
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4014
    return v2

    .line 4011
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4012
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public getCdmaEriIconIndex(Ljava/lang/String;)I
    .locals 6
    .param p1, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2664
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2665
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2668
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2669
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2670
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x32

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2671
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2672
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 2675
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2676
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2678
    return v2

    .line 2675
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2676
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public getCdmaEriIconIndexForSubscriber(ILjava/lang/String;)I
    .locals 6
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2687
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2688
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2691
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2692
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2693
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2694
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x33

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2695
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2696
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 2699
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2700
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2702
    return v2

    .line 2699
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2700
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public getCdmaEriIconMode(Ljava/lang/String;)I
    .locals 6
    .param p1, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2712
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2713
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2716
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2717
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2718
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x34

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2719
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2720
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 2723
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2724
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2726
    return v2

    .line 2723
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2724
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public getCdmaEriIconModeForSubscriber(ILjava/lang/String;)I
    .locals 6
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2737
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2738
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2741
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2742
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2743
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2744
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x35

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2745
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2746
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 2749
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2750
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2752
    return v2

    .line 2749
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2750
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public getCdmaEriText(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2760
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2761
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2764
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2765
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2766
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x36

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2767
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2768
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 2771
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2772
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2774
    return-object v2

    .line 2771
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2772
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public getCdmaEriTextForSubscriber(ILjava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2783
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2784
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2787
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2788
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2789
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2790
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x37

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2791
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2792
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 2795
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2796
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2798
    return-object v2

    .line 2795
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2796
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public getCdmaMdn(I)Ljava/lang/String;
    .locals 6
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3950
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3951
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3954
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3955
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3956
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x63

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3957
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3958
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 3961
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3962
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3964
    return-object v2

    .line 3961
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3962
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public getCdmaMin(I)Ljava/lang/String;
    .locals 6
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3972
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3973
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3976
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3977
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3978
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x64

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3979
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3980
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 3983
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3984
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3986
    return-object v2

    .line 3983
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3984
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public getCellLocation(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 6
    .param p1, "callingPkg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2477
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2478
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2481
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2482
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2483
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x29

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2484
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2485
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 2486
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2493
    .local v2, "_result":Landroid/os/Bundle;
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2494
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2496
    return-object v2

    .line 2489
    .end local v2    # "_result":Landroid/os/Bundle;
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Landroid/os/Bundle;
    goto :goto_0

    .line 2493
    .end local v2    # "_result":Landroid/os/Bundle;
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2494
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public getCellLocationById(I)Landroid/os/Bundle;
    .locals 6
    .param p1, "slotId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4809
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4810
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4813
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4814
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4815
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x87

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4816
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4817
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 4818
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4825
    .local v2, "_result":Landroid/os/Bundle;
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4826
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4828
    return-object v2

    .line 4821
    .end local v2    # "_result":Landroid/os/Bundle;
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Landroid/os/Bundle;
    goto :goto_0

    .line 4825
    .end local v2    # "_result":Landroid/os/Bundle;
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4826
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public getCellNetworkScanResults(I)Lcom/android/internal/telephony/CellNetworkScanResult;
    .locals 6
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3774
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3775
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3778
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3779
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3780
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x5c

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3781
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3782
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 3783
    sget-object v3, Lcom/android/internal/telephony/CellNetworkScanResult;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/CellNetworkScanResult;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3790
    .local v2, "_result":Lcom/android/internal/telephony/CellNetworkScanResult;
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3791
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3793
    return-object v2

    .line 3786
    .end local v2    # "_result":Lcom/android/internal/telephony/CellNetworkScanResult;
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Lcom/android/internal/telephony/CellNetworkScanResult;
    goto :goto_0

    .line 3790
    .end local v2    # "_result":Lcom/android/internal/telephony/CellNetworkScanResult;
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3791
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public getDataActivity()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2559
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2560
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2563
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2564
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x2d

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2565
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2566
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 2569
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2570
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2572
    return v2

    .line 2569
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2570
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public getDataEnabled(I)Z
    .locals 6
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 3886
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3887
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3890
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3891
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3892
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x60

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3893
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3894
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 3897
    .local v2, "_result":Z
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3898
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3900
    return v2

    .line 3897
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3898
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public getDataNetworkType(Ljava/lang/String;)I
    .locals 6
    .param p1, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2939
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2940
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2943
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2944
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2945
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x3e

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2946
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2947
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 2950
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2951
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2953
    return v2

    .line 2950
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2951
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public getDataNetworkTypeForSubscriber(ILjava/lang/String;)I
    .locals 6
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2962
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2963
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2966
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2967
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2968
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2969
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x3f

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2970
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2971
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 2974
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2975
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2977
    return v2

    .line 2974
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2975
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public getDataState()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2576
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2577
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2580
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2581
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x2e

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2582
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2583
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 2586
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2587
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2589
    return v2

    .line 2586
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2587
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public getDefaultSim()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3170
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3171
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3174
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3175
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x48

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3176
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3177
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 3180
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3181
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3183
    return v2

    .line 3180
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3181
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public getDeviceId(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4611
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4612
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4615
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4616
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4617
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x7e

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4618
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4619
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 4622
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4623
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4625
    return-object v2

    .line 4622
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4623
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public getIccOperatorNumericForData(I)Ljava/lang/String;
    .locals 6
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3011
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3012
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3015
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3016
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3017
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x41

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3018
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3019
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 3022
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3023
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3025
    return-object v2

    .line 3022
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3023
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1551
    const-string v0, "com.android.internal.telephony.ITelephony"

    return-object v0
.end method

.method public getLine1AlphaTagForDisplay(ILjava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4162
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4163
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4166
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4167
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4168
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4169
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x6b

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4170
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4171
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 4174
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4175
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4177
    return-object v2

    .line 4174
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4175
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public getLine1NumberForDisplay(ILjava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4134
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4135
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4138
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4139
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4140
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4141
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x6a

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4142
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4143
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 4146
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4147
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4149
    return-object v2

    .line 4146
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4147
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public getLocaleFromDefaultSim()Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4677
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4678
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4681
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4682
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x81

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4683
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4684
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 4687
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4688
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4690
    return-object v2

    .line 4687
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4688
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public getLteOnCdmaMode(Ljava/lang/String;)I
    .locals 6
    .param p1, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3081
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3082
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3085
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3086
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3087
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x44

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3088
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3089
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 3092
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3093
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3095
    return v2

    .line 3092
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3093
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public getLteOnCdmaModeForSubscriber(ILjava/lang/String;)I
    .locals 6
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3108
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3109
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3112
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3113
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3114
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3115
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x45

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3116
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3117
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 3120
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3121
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3123
    return v2

    .line 3120
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3121
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public getMergedSubscriberIds(Ljava/lang/String;)[Ljava/lang/String;
    .locals 6
    .param p1, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4181
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4182
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4185
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4186
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4187
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x6c

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4188
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4189
    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 4192
    .local v2, "_result":[Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4193
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4195
    return-object v2

    .line 4192
    .end local v2    # "_result":[Ljava/lang/String;
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4193
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public getModemActivityInfo()Landroid/telephony/ModemActivityInfo;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4697
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4698
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4701
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4702
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x82

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4703
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4704
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 4705
    sget-object v3, Landroid/telephony/ModemActivityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/ModemActivityInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4712
    .local v2, "_result":Landroid/telephony/ModemActivityInfo;
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4713
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4715
    return-object v2

    .line 4708
    .end local v2    # "_result":Landroid/telephony/ModemActivityInfo;
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Landroid/telephony/ModemActivityInfo;
    goto :goto_0

    .line 4712
    .end local v2    # "_result":Landroid/telephony/ModemActivityInfo;
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4713
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public getNeighboringCellInfo(Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .param p1, "callingPkg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/NeighboringCellInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2503
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2504
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2507
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2508
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2509
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x2a

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2510
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2511
    sget-object v3, Landroid/telephony/NeighboringCellInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 2514
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/NeighboringCellInfo;>;"
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2515
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2517
    return-object v2

    .line 2514
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/NeighboringCellInfo;>;"
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2515
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public getNetworkType()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2894
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2895
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2898
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2899
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x3c

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2900
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2901
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 2904
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2905
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2907
    return v2

    .line 2904
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2905
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public getNetworkTypeForSubscriber(ILjava/lang/String;)I
    .locals 6
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2916
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2917
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2920
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2921
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2922
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2923
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x3d

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2924
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2925
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 2928
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2929
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2931
    return v2

    .line 2928
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2929
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public getPcscfAddress(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 6
    .param p1, "apnType"    # Ljava/lang/String;
    .param p2, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3909
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3910
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3913
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3914
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3915
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3916
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x61

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3917
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3918
    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 3921
    .local v2, "_result":[Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3922
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3924
    return-object v2

    .line 3921
    .end local v2    # "_result":[Ljava/lang/String;
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3922
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public getPreferredNetworkType(I)I
    .locals 6
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3706
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3707
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3710
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3711
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3712
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x59

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3713
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3714
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 3717
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3718
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3720
    return v2

    .line 3717
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3718
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public getRadioAccessFamily(ILjava/lang/String;)I
    .locals 6
    .param p1, "phoneId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4372
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4373
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4376
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4377
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4378
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4379
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x73

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4380
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4381
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 4384
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4385
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4387
    return v2

    .line 4384
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4385
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public getServiceStateForSubscriber(I)I
    .locals 6
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2596
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2597
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2600
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2601
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2602
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x2f

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2603
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2604
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 2607
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2608
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2610
    return v2

    .line 2607
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2608
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public getSubIdForPhoneAccount(Landroid/telecom/PhoneAccount;)I
    .locals 6
    .param p1, "phoneAccount"    # Landroid/telecom/PhoneAccount;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4632
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4633
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4636
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4637
    if-eqz p1, :cond_0

    .line 4638
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 4639
    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3}, Landroid/telecom/PhoneAccount;->writeToParcel(Landroid/os/Parcel;I)V

    .line 4644
    :goto_0
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x7f

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4645
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4646
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 4649
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4650
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4652
    return v2

    .line 4642
    .end local v2    # "_result":I
    :cond_0
    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 4649
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4650
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public getTetherApnRequired()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3731
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3732
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3735
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3736
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x5a

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3737
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3738
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 3741
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3742
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3744
    return v2

    .line 3741
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3742
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public getVoiceMessageCount()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2850
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2851
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2854
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2855
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x3a

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2856
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2857
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 2860
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2861
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2863
    return v2

    .line 2860
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2861
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public getVoiceMessageCountForSubscriber(I)I
    .locals 6
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2872
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2873
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2876
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2877
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2878
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x3b

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2879
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2880
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 2883
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2884
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2886
    return v2

    .line 2883
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2884
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public getVoiceNetworkTypeForSubscriber(ILjava/lang/String;)I
    .locals 6
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2987
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2988
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2991
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2992
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2993
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2994
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x40

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2995
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2996
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 2999
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3000
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3002
    return v2

    .line 2999
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3000
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public handlePinMmi(Ljava/lang/String;)Z
    .locals 6
    .param p1, "dialString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 2163
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2164
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2167
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2168
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2169
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x19

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2170
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2171
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 2174
    .local v2, "_result":Z
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2175
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2177
    return v2

    .line 2174
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2175
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public handlePinMmiForSubscriber(ILjava/lang/String;)Z
    .locals 6
    .param p1, "subId"    # I
    .param p2, "dialString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 2189
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2190
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2193
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2194
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2195
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2196
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x1a

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2197
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2198
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 2201
    .local v2, "_result":Z
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2202
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2204
    return v2

    .line 2201
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2202
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public hasIccCard()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 3032
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3033
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3036
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3037
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x42

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3038
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3039
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 3042
    .local v2, "_result":Z
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3043
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3045
    return v2

    .line 3042
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3043
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public hasIccCardUsingSlotId(I)Z
    .locals 6
    .param p1, "slotId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 3054
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3055
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3058
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3059
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3060
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x43

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3061
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3062
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 3065
    .local v2, "_result":Z
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3066
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3068
    return v2

    .line 3065
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3066
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public iccCloseLogicalChannel(I)Z
    .locals 6
    .param p1, "channel"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 3260
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3261
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3264
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3265
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3266
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x4b

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3267
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3268
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 3271
    .local v2, "_result":Z
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3272
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3274
    return v2

    .line 3271
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3272
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public iccCloseLogicalChannelUsingSubId(II)Z
    .locals 6
    .param p1, "subId"    # I
    .param p2, "channel"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 3289
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3290
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3293
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3294
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3295
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3296
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x4c

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3297
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3298
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 3301
    .local v2, "_result":Z
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3302
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3304
    return v2

    .line 3301
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3302
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public iccExchangeSimIO(IIIIILjava/lang/String;)[B
    .locals 6
    .param p1, "fileID"    # I
    .param p2, "command"    # I
    .param p3, "p1"    # I
    .param p4, "p2"    # I
    .param p5, "p3"    # I
    .param p6, "filePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3483
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3484
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3487
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3488
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3489
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3490
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3491
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 3492
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 3493
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3494
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x51

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3495
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3496
    invoke-virtual {v1}, Landroid/os/Parcel;->createByteArray()[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 3499
    .local v2, "_result":[B
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3500
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3502
    return-object v2

    .line 3499
    .end local v2    # "_result":[B
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3500
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public iccExchangeSimIOUsingSubId(IIIIIILjava/lang/String;)[B
    .locals 6
    .param p1, "subId"    # I
    .param p2, "fileID"    # I
    .param p3, "command"    # I
    .param p4, "p1"    # I
    .param p5, "p2"    # I
    .param p6, "p3"    # I
    .param p7, "filePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3519
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3520
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3523
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3524
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3525
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3526
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3527
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 3528
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 3529
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeInt(I)V

    .line 3530
    invoke-virtual {v0, p7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3531
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x52

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3532
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3533
    invoke-virtual {v1}, Landroid/os/Parcel;->createByteArray()[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 3536
    .local v2, "_result":[B
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3537
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3539
    return-object v2

    .line 3536
    .end local v2    # "_result":[B
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3537
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public iccOpenLogicalChannel(Ljava/lang/String;)Landroid/telephony/IccOpenLogicalChannelResponse;
    .locals 6
    .param p1, "AID"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3195
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3196
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3199
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3200
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3201
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x49

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3202
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3203
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 3204
    sget-object v3, Landroid/telephony/IccOpenLogicalChannelResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/IccOpenLogicalChannelResponse;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3211
    .local v2, "_result":Landroid/telephony/IccOpenLogicalChannelResponse;
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3212
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3214
    return-object v2

    .line 3207
    .end local v2    # "_result":Landroid/telephony/IccOpenLogicalChannelResponse;
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Landroid/telephony/IccOpenLogicalChannelResponse;
    goto :goto_0

    .line 3211
    .end local v2    # "_result":Landroid/telephony/IccOpenLogicalChannelResponse;
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3212
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public iccOpenLogicalChannelUsingSubId(ILjava/lang/String;)Landroid/telephony/IccOpenLogicalChannelResponse;
    .locals 6
    .param p1, "subId"    # I
    .param p2, "AID"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3227
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3228
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3231
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3232
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3233
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3234
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x4a

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3235
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3236
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 3237
    sget-object v3, Landroid/telephony/IccOpenLogicalChannelResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/IccOpenLogicalChannelResponse;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3244
    .local v2, "_result":Landroid/telephony/IccOpenLogicalChannelResponse;
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3245
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3247
    return-object v2

    .line 3240
    .end local v2    # "_result":Landroid/telephony/IccOpenLogicalChannelResponse;
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Landroid/telephony/IccOpenLogicalChannelResponse;
    goto :goto_0

    .line 3244
    .end local v2    # "_result":Landroid/telephony/IccOpenLogicalChannelResponse;
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3245
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public iccTransmitApduBasicChannel(IIIIILjava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "cla"    # I
    .param p2, "instruction"    # I
    .param p3, "p1"    # I
    .param p4, "p2"    # I
    .param p5, "p3"    # I
    .param p6, "data"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3408
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3409
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3412
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3413
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3414
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3415
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3416
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 3417
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 3418
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3419
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x4f

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3420
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3421
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 3424
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3425
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3427
    return-object v2

    .line 3424
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3425
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public iccTransmitApduBasicChannelUsingSubId(IIIIIILjava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "subId"    # I
    .param p2, "cla"    # I
    .param p3, "instruction"    # I
    .param p4, "p1"    # I
    .param p5, "p2"    # I
    .param p6, "p3"    # I
    .param p7, "data"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3448
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3449
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3452
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3453
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3454
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3455
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3456
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 3457
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 3458
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeInt(I)V

    .line 3459
    invoke-virtual {v0, p7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3460
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x50

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3461
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3462
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 3465
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3466
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3468
    return-object v2

    .line 3465
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3466
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public iccTransmitApduLogicalChannel(IIIIIILjava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "channel"    # I
    .param p2, "cla"    # I
    .param p3, "instruction"    # I
    .param p4, "p1"    # I
    .param p5, "p2"    # I
    .param p6, "p3"    # I
    .param p7, "data"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3325
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3326
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3329
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3330
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3331
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3332
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3333
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 3334
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 3335
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeInt(I)V

    .line 3336
    invoke-virtual {v0, p7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3337
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x4d

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3338
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3339
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 3342
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3343
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3345
    return-object v2

    .line 3342
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3343
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public iccTransmitApduLogicalChannelUsingSubId(IIIIIIILjava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "subId"    # I
    .param p2, "channel"    # I
    .param p3, "cla"    # I
    .param p4, "instruction"    # I
    .param p5, "p1"    # I
    .param p6, "p2"    # I
    .param p7, "p3"    # I
    .param p8, "data"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3368
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3369
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3372
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3373
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3374
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3375
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3376
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 3377
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 3378
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeInt(I)V

    .line 3379
    invoke-virtual {v0, p7}, Landroid/os/Parcel;->writeInt(I)V

    .line 3380
    invoke-virtual {v0, p8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3381
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x4e

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3382
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3383
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 3386
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3387
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3389
    return-object v2

    .line 3386
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3387
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public invokeOemRilRequestRaw([B[B)I
    .locals 6
    .param p1, "oemReq"    # [B
    .param p2, "oemResp"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4279
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4280
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4283
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4284
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 4285
    if-nez p2, :cond_0

    .line 4286
    const/4 v3, -0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 4291
    :goto_0
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x6f

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4292
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4293
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 4294
    .local v2, "_result":I
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->readByteArray([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4297
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4298
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4300
    return v2

    .line 4289
    .end local v2    # "_result":I
    :cond_0
    :try_start_1
    array-length v3, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 4297
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4298
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public isDataConnectivityPossible()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 2460
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2461
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2464
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2465
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x28

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2466
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2467
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 2470
    .local v2, "_result":Z
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2471
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2473
    return v2

    .line 2470
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2471
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public isHearingAidCompatibilitySupported()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 4506
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4507
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4510
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4511
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x79

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4512
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4513
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 4516
    .local v2, "_result":Z
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4517
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4519
    return v2

    .line 4516
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4517
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public isIdle(Ljava/lang/String;)Z
    .locals 6
    .param p1, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1830
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1831
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1834
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1835
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1836
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xc

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1837
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1838
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 1841
    .local v2, "_result":Z
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1842
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1844
    return v2

    .line 1841
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1842
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public isIdleForSubscriber(ILjava/lang/String;)Z
    .locals 6
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1855
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1856
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1859
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1860
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1861
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1862
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xd

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1863
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1864
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 1867
    .local v2, "_result":Z
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1868
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1870
    return v2

    .line 1867
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1868
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public isImsRegistered()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 4526
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4527
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4530
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4531
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x7a

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4532
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4533
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 4536
    .local v2, "_result":Z
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4537
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4539
    return v2

    .line 4536
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4537
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public isOffhook(Ljava/lang/String;)Z
    .locals 6
    .param p1, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1731
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1732
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1735
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1736
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1737
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x8

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1738
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1739
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 1742
    .local v2, "_result":Z
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1743
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1745
    return v2

    .line 1742
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1743
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public isOffhookForSubscriber(ILjava/lang/String;)Z
    .locals 6
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1756
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1757
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1760
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1761
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1762
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1763
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x9

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1764
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1765
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 1768
    .local v2, "_result":Z
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1769
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1771
    return v2

    .line 1768
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1769
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public isRadioAvailable()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 4788
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4789
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4792
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4793
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x86

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4794
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4795
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 4798
    .local v2, "_result":Z
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4799
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4801
    return v2

    .line 4798
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4799
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public isRadioOn(Ljava/lang/String;)Z
    .locals 6
    .param p1, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1879
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1880
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1883
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1884
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1885
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xe

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1886
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1887
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 1890
    .local v2, "_result":Z
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1891
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1893
    return v2

    .line 1890
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1891
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public isRadioOnForSubscriber(ILjava/lang/String;)Z
    .locals 6
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1903
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1904
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1907
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1908
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1909
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1910
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xf

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1911
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1912
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 1915
    .local v2, "_result":Z
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1916
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1918
    return v2

    .line 1915
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1916
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public isRinging(Ljava/lang/String;)Z
    .locals 6
    .param p1, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1807
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1808
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1811
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1812
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1813
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xb

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1814
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1815
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 1818
    .local v2, "_result":Z
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1819
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1821
    return v2

    .line 1818
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1819
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public isRingingForSubscriber(ILjava/lang/String;)Z
    .locals 6
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1783
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1784
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1787
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1788
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1789
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1790
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xa

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1791
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1792
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 1795
    .local v2, "_result":Z
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1796
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1798
    return v2

    .line 1795
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1796
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public isSimPinEnabled(Ljava/lang/String;)Z
    .locals 6
    .param p1, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1927
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1928
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1931
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1932
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1933
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x10

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1934
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1935
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 1938
    .local v2, "_result":Z
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1939
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1941
    return v2

    .line 1938
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1939
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public isTtyModeSupported()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 4484
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4485
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4488
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4489
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x78

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4490
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4491
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 4494
    .local v2, "_result":Z
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4495
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4497
    return v2

    .line 4494
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4495
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public isVideoCallingEnabled(Ljava/lang/String;)Z
    .locals 6
    .param p1, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 4417
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4418
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4421
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4422
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4423
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x75

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4424
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4425
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 4428
    .local v2, "_result":Z
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4429
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4431
    return v2

    .line 4428
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4429
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public isVideoTelephonyAvailable()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 4586
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4587
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4590
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4591
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x7d

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4592
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4593
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 4596
    .local v2, "_result":Z
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4597
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4599
    return v2

    .line 4596
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4597
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public isVolteAvailable()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 4566
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4567
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4570
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4571
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x7c

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4572
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4573
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 4576
    .local v2, "_result":Z
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4577
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4579
    return v2

    .line 4576
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4577
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public isWifiCallingAvailable()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 4546
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4547
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4550
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4551
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x7b

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4552
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4553
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 4556
    .local v2, "_result":Z
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4557
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4559
    return v2

    .line 4556
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4557
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public isWorldPhone()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 4462
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4463
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4466
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4467
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x77

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4468
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4469
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 4472
    .local v2, "_result":Z
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4473
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4475
    return v2

    .line 4472
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4473
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public needMobileRadioShutdown()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 4309
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4310
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4313
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4314
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x70

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4315
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4316
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 4319
    .local v2, "_result":Z
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4320
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4322
    return v2

    .line 4319
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4320
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public needsOtaServiceProvisioning()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 2807
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2808
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2811
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2812
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x38

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2813
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2814
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 2817
    .local v2, "_result":Z
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2818
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2820
    return v2

    .line 2817
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2818
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public nvReadItem(I)Ljava/lang/String;
    .locals 6
    .param p1, "itemID"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3578
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3579
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3582
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3583
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3584
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x54

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3585
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3586
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 3589
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3590
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3592
    return-object v2

    .line 3589
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3590
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public nvResetConfig(I)Z
    .locals 6
    .param p1, "resetType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 3656
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3657
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3660
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3661
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3662
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x57

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3663
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3664
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 3667
    .local v2, "_result":Z
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3668
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3670
    return v2

    .line 3667
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3668
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public nvWriteCdmaPrl([B)Z
    .locals 6
    .param p1, "preferredRoamingList"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 3630
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3631
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3634
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3635
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 3636
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x56

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3637
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3638
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 3641
    .local v2, "_result":Z
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3642
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3644
    return v2

    .line 3641
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3642
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public nvWriteItem(ILjava/lang/String;)Z
    .locals 6
    .param p1, "itemID"    # I
    .param p2, "itemValue"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 3604
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3605
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3608
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3609
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3610
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3611
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x55

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3612
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3613
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 3616
    .local v2, "_result":Z
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3617
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3619
    return v2

    .line 3616
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3617
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public sendEnvelopeWithStatus(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "content"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3553
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3554
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3557
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3558
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3559
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x53

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3560
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3561
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 3564
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3565
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3567
    return-object v2

    .line 3564
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3565
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public setCellInfoListRate(I)V
    .locals 5
    .param p1, "rateInMillis"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3151
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3152
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3154
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3155
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3156
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x47

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3157
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3160
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3161
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3163
    return-void

    .line 3160
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3161
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public setDataEnabled(IZ)V
    .locals 5
    .param p1, "subId"    # I
    .param p2, "enable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 3865
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3866
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3868
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3869
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3870
    if-eqz p2, :cond_0

    const/4 v2, 0x1

    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3871
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x5f

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3872
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3875
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3876
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3878
    return-void

    .line 3875
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3876
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public setImsRegistrationState(Z)V
    .locals 5
    .param p1, "registered"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 3931
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3932
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3934
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3935
    if-eqz p1, :cond_0

    const/4 v2, 0x1

    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3936
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x62

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3937
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3940
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3941
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3943
    return-void

    .line 3940
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3941
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public setLine1NumberForDisplayForSubscriber(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p1, "subId"    # I
    .param p2, "alphaTag"    # Ljava/lang/String;
    .param p3, "number"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 4106
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4107
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4110
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4111
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4112
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4113
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4114
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x69

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4115
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4116
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 4119
    .local v2, "_result":Z
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4120
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4122
    return v2

    .line 4119
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4120
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public setNetworkSelectionModeAutomatic(I)V
    .locals 5
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3753
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3754
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3756
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3757
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3758
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x5b

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3759
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3762
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3763
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3765
    return-void

    .line 3762
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3763
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public setNetworkSelectionModeManual(ILcom/android/internal/telephony/OperatorInfo;Z)Z
    .locals 7
    .param p1, "subId"    # I
    .param p2, "operator"    # Lcom/android/internal/telephony/OperatorInfo;
    .param p3, "persistSelection"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 3807
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3808
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3811
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v4, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3812
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3813
    if-eqz p2, :cond_0

    .line 3814
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 3815
    const/4 v4, 0x0

    invoke-virtual {p2, v0, v4}, Lcom/android/internal/telephony/OperatorInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 3820
    :goto_0
    if-eqz p3, :cond_1

    move v4, v2

    :goto_1
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 3821
    iget-object v4, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0x5d

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3822
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3823
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_2

    .line 3826
    .local v2, "_result":Z
    :goto_2
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3827
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3829
    return v2

    .line 3818
    .end local v2    # "_result":Z
    :cond_0
    const/4 v4, 0x0

    :try_start_1
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 3826
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3827
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3

    :cond_1
    move v4, v3

    .line 3820
    goto :goto_1

    :cond_2
    move v2, v3

    .line 3823
    goto :goto_2
.end method

.method public setOperatorBrandOverride(Ljava/lang/String;)Z
    .locals 6
    .param p1, "brand"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 4214
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4215
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4218
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4219
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4220
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x6d

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4221
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4222
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 4225
    .local v2, "_result":Z
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4226
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4228
    return v2

    .line 4225
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4226
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public setPolicyDataEnableForSubscriber(IZ)V
    .locals 5
    .param p1, "subId"    # I
    .param p2, "enabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 4837
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4838
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4840
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4841
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4842
    if-eqz p2, :cond_0

    const/4 v2, 0x1

    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4843
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x88

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4844
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4847
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4848
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4850
    return-void

    .line 4847
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4848
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public setPreferredApnBySlot(ILjava/lang/String;)V
    .locals 5
    .param p1, "slotId"    # I
    .param p2, "esimProfile"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4768
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4769
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4771
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4772
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4773
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4774
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x85

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4775
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4778
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4779
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4781
    return-void

    .line 4778
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4779
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public setPreferredNetworkType(II)Z
    .locals 6
    .param p1, "subId"    # I
    .param p2, "networkType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 3841
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3842
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3845
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3846
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3847
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3848
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x5e

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3849
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3850
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 3853
    .local v2, "_result":Z
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3854
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3856
    return v2

    .line 3853
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3854
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public setRadio(Z)Z
    .locals 7
    .param p1, "turnOn"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2247
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2248
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2251
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v4, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2252
    if-eqz p1, :cond_0

    move v4, v2

    :goto_0
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2253
    iget-object v4, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0x1d

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2254
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2255
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_1

    .line 2258
    .local v2, "_result":Z
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2259
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2261
    return v2

    .end local v2    # "_result":Z
    :cond_0
    move v4, v3

    .line 2252
    goto :goto_0

    :cond_1
    move v2, v3

    .line 2255
    goto :goto_1

    .line 2258
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2259
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public setRadioCapability([Landroid/telephony/RadioAccessFamily;)V
    .locals 5
    .param p1, "rafs"    # [Landroid/telephony/RadioAccessFamily;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4350
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4351
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4353
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4354
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 4355
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x72

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4356
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4359
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4360
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4362
    return-void

    .line 4359
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4360
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public setRadioForSubscriber(IZ)Z
    .locals 7
    .param p1, "subId"    # I
    .param p2, "turnOn"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2269
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2270
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2273
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v4, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2274
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2275
    if-eqz p2, :cond_0

    move v4, v2

    :goto_0
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2276
    iget-object v4, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0x1e

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2277
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2278
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_1

    .line 2281
    .local v2, "_result":Z
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2282
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2284
    return v2

    .end local v2    # "_result":Z
    :cond_0
    move v4, v3

    .line 2275
    goto :goto_0

    :cond_1
    move v2, v3

    .line 2278
    goto :goto_1

    .line 2281
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2282
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public setRadioPower(Z)Z
    .locals 7
    .param p1, "turnOn"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2291
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2292
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2295
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v4, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2296
    if-eqz p1, :cond_0

    move v4, v2

    :goto_0
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2297
    iget-object v4, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0x1f

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2298
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2299
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_1

    .line 2302
    .local v2, "_result":Z
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2303
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2305
    return v2

    .end local v2    # "_result":Z
    :cond_0
    move v4, v3

    .line 2296
    goto :goto_0

    :cond_1
    move v2, v3

    .line 2299
    goto :goto_1

    .line 2302
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2303
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public setRoamingOverride(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .local p1, "gsmRoamingList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "gsmNonRoamingList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p3, "cdmaRoamingList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p4, "cdmaNonRoamingList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 4249
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4250
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4253
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4254
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 4255
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 4256
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 4257
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 4258
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x6e

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4259
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4260
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 4263
    .local v2, "_result":Z
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4264
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4266
    return v2

    .line 4263
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4264
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public setVoiceMailNumber(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p1, "subId"    # I
    .param p2, "alphaTag"    # Ljava/lang/String;
    .param p3, "number"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 2827
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2828
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2831
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2832
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2833
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2834
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2835
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x39

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2836
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2837
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 2840
    .local v2, "_result":Z
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2841
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2843
    return v2

    .line 2840
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2841
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public shutdownMobileRadios()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4329
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4330
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4332
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4333
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x71

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4334
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4337
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4338
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4340
    return-void

    .line 4337
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4338
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public silenceRinger()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1712
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1713
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1715
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1716
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x7

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1717
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1720
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1721
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1723
    return-void

    .line 1720
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1721
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public supplyPin(Ljava/lang/String;)Z
    .locals 6
    .param p1, "pin"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1950
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1951
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1954
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1955
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1956
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x11

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1957
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1958
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 1961
    .local v2, "_result":Z
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1962
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1964
    return v2

    .line 1961
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1962
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public supplyPinForSubscriber(ILjava/lang/String;)Z
    .locals 6
    .param p1, "subId"    # I
    .param p2, "pin"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1975
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1976
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1979
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1980
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1981
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1982
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x12

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1983
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1984
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 1987
    .local v2, "_result":Z
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1988
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1990
    return v2

    .line 1987
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1988
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public supplyPinReportResult(Ljava/lang/String;)[I
    .locals 6
    .param p1, "pin"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2055
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2056
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2059
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2060
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2061
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x15

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2062
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2063
    invoke-virtual {v1}, Landroid/os/Parcel;->createIntArray()[I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 2066
    .local v2, "_result":[I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2067
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2069
    return-object v2

    .line 2066
    .end local v2    # "_result":[I
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2067
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public supplyPinReportResultForSubscriber(ILjava/lang/String;)[I
    .locals 6
    .param p1, "subId"    # I
    .param p2, "pin"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2080
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2081
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2084
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2085
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2086
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2087
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x16

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2088
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2089
    invoke-virtual {v1}, Landroid/os/Parcel;->createIntArray()[I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 2092
    .local v2, "_result":[I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2093
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2095
    return-object v2

    .line 2092
    .end local v2    # "_result":[I
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2093
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public supplyPuk(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p1, "puk"    # Ljava/lang/String;
    .param p2, "pin"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 2001
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2002
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2005
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2006
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2007
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2008
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x13

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2009
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2010
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 2013
    .local v2, "_result":Z
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2014
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2016
    return v2

    .line 2013
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2014
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public supplyPukForSubscriber(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p1, "subId"    # I
    .param p2, "puk"    # Ljava/lang/String;
    .param p3, "pin"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 2028
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2029
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2032
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2033
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2034
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2035
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2036
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x14

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2037
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2038
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 2041
    .local v2, "_result":Z
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2042
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2044
    return v2

    .line 2041
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2042
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public supplyPukReportResult(Ljava/lang/String;Ljava/lang/String;)[I
    .locals 6
    .param p1, "puk"    # Ljava/lang/String;
    .param p2, "pin"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2108
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2109
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2112
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2113
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2114
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2115
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x17

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2116
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2117
    invoke-virtual {v1}, Landroid/os/Parcel;->createIntArray()[I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 2120
    .local v2, "_result":[I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2121
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2123
    return-object v2

    .line 2120
    .end local v2    # "_result":[I
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2121
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public supplyPukReportResultForSubscriber(ILjava/lang/String;Ljava/lang/String;)[I
    .locals 6
    .param p1, "subId"    # I
    .param p2, "puk"    # Ljava/lang/String;
    .param p3, "pin"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2136
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2137
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2140
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2141
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2142
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2143
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2144
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x18

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2145
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2146
    invoke-virtual {v1}, Landroid/os/Parcel;->createIntArray()[I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 2149
    .local v2, "_result":[I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2150
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2152
    return-object v2

    .line 2149
    .end local v2    # "_result":[I
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2150
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public toggleRadioOnOff()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2211
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2212
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2214
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2215
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1b

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2216
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2219
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2220
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2222
    return-void

    .line 2219
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2220
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public toggleRadioOnOffForSubscriber(I)V
    .locals 5
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2229
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2230
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2232
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2233
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2234
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1c

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2235
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2238
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2239
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2241
    return-void

    .line 2238
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2239
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public updateServiceLocation()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2312
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2313
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2315
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2316
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x20

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2317
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2320
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2321
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2323
    return-void

    .line 2320
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2321
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public updateServiceLocationForSubscriber(I)V
    .locals 5
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2330
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2331
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2333
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2334
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2335
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x21

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2336
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2339
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2340
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2342
    return-void

    .line 2339
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2340
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method
