.class Landroid/app/ActivityManagerProxy;
.super Ljava/lang/Object;
.source "ActivityManagerNative.java"

# interfaces
.implements Landroid/app/IActivityManager;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;)V
    .locals 0
    .param p1, "remote"    # Landroid/os/IBinder;

    .prologue
    .line 2765
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2766
    iput-object p1, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    .line 2767
    return-void
.end method


# virtual methods
.method public activityDestroyed(Landroid/os/IBinder;)V
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3316
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3317
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3318
    .local v1, "reply":Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3319
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 3320
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x3e

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3321
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3322
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3323
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3324
    return-void
.end method

.method public activityIdle(Landroid/os/IBinder;Landroid/content/res/Configuration;Z)V
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "config"    # Landroid/content/res/Configuration;
    .param p3, "stopProfiling"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 3250
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3251
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3252
    .local v1, "reply":Landroid/os/Parcel;
    const-string v4, "android.app.IActivityManager"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3253
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 3254
    if-eqz p2, :cond_1

    .line 3255
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3256
    invoke-virtual {p2, v0, v2}, Landroid/content/res/Configuration;->writeToParcel(Landroid/os/Parcel;I)V

    .line 3260
    :goto_0
    if-eqz p3, :cond_0

    move v2, v3

    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3261
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x12

    invoke-interface {v2, v4, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3262
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3263
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3264
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3265
    return-void

    .line 3258
    :cond_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0
.end method

.method public activityPaused(Landroid/os/IBinder;)V
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3279
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3280
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3281
    .local v1, "reply":Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3282
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 3283
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x13

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3284
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3285
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3286
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3287
    return-void
.end method

.method public activityResumed(Landroid/os/IBinder;)V
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3268
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3269
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3270
    .local v1, "reply":Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3271
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 3272
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x27

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3273
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3274
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3275
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3276
    return-void
.end method

.method public activitySlept(Landroid/os/IBinder;)V
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3305
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3306
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3307
    .local v1, "reply":Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3308
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 3309
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x7b

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3310
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3311
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3312
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3313
    return-void
.end method

.method public activityStopped(Landroid/os/IBinder;Landroid/os/Bundle;Landroid/os/PersistableBundle;Ljava/lang/CharSequence;)V
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "state"    # Landroid/os/Bundle;
    .param p3, "persistentState"    # Landroid/os/PersistableBundle;
    .param p4, "description"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3291
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3292
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3293
    .local v1, "reply":Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3294
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 3295
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 3296
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writePersistableBundle(Landroid/os/PersistableBundle;)V

    .line 3297
    const/4 v2, 0x0

    invoke-static {p4, v0, v2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 3298
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x14

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3299
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3300
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3301
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3302
    return-void
.end method

.method public addAppTask(Landroid/os/IBinder;Landroid/content/Intent;Landroid/app/ActivityManager$TaskDescription;Landroid/graphics/Bitmap;)I
    .locals 6
    .param p1, "activityToken"    # Landroid/os/IBinder;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "description"    # Landroid/app/ActivityManager$TaskDescription;
    .param p4, "thumbnail"    # Landroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 3374
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3375
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3376
    .local v1, "reply":Landroid/os/Parcel;
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3377
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 3378
    invoke-virtual {p2, v0, v5}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 3379
    invoke-virtual {p3, v0, v5}, Landroid/app/ActivityManager$TaskDescription;->writeToParcel(Landroid/os/Parcel;I)V

    .line 3380
    invoke-virtual {p4, v0, v5}, Landroid/graphics/Bitmap;->writeToParcel(Landroid/os/Parcel;I)V

    .line 3381
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xea

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3382
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3383
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3384
    .local v2, "res":I
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3385
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3386
    return v2
.end method

.method public addPackageDependency(Ljava/lang/String;)V
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4776
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4777
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4778
    .local v1, "reply":Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4779
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4780
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x5f

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4781
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4782
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4783
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4784
    return-void
.end method

.method public appNotRespondingViaProvider(Landroid/os/IBinder;)V
    .locals 5
    .param p1, "connection"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3802
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3803
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3804
    .local v1, "reply":Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3805
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 3806
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xb7

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3807
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3808
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3809
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3810
    return-void
.end method

.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 2771
    iget-object v0, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public attachApplication(Landroid/app/IApplicationThread;)V
    .locals 5
    .param p1, "app"    # Landroid/app/IApplicationThread;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3238
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3239
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3240
    .local v1, "reply":Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3241
    invoke-interface {p1}, Landroid/app/IApplicationThread;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 3242
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x11

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3243
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3244
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3245
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3246
    return-void
.end method

.method public backgroundResourcesReleased(Landroid/os/IBinder;)V
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 6086
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6087
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6088
    .local v1, "reply":Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6089
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 6090
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xe4

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 6091
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6092
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6093
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6094
    return-void
.end method

.method public backupAgentCreated(Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "agent"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4040
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4041
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4042
    .local v1, "reply":Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4043
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4044
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 4045
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x5b

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4046
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4047
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4048
    return-void
.end method

.method public bindBackupAgent(Landroid/content/pm/ApplicationInfo;I)Z
    .locals 5
    .param p1, "app"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "backupRestoreMode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 4017
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4018
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4019
    .local v1, "reply":Landroid/os/Parcel;
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4020
    invoke-virtual {p1, v0, v2}, Landroid/content/pm/ApplicationInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 4021
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4022
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x5a

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4023
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4024
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 4025
    .local v2, "success":Z
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4026
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4027
    return v2
.end method

.method public bindService(Landroid/app/IApplicationThread;Landroid/os/IBinder;Landroid/content/Intent;Ljava/lang/String;Landroid/app/IServiceConnection;ILjava/lang/String;I)I
    .locals 6
    .param p1, "caller"    # Landroid/app/IApplicationThread;
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "service"    # Landroid/content/Intent;
    .param p4, "resolvedType"    # Ljava/lang/String;
    .param p5, "connection"    # Landroid/app/IServiceConnection;
    .param p6, "flags"    # I
    .param p7, "callingPackage"    # Ljava/lang/String;
    .param p8, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 3924
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3925
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3926
    .local v1, "reply":Landroid/os/Parcel;
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3927
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/app/IApplicationThread;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 3928
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 3929
    invoke-virtual {p3, v0, v5}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 3930
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3931
    invoke-interface {p5}, Landroid/app/IServiceConnection;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 3932
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeInt(I)V

    .line 3933
    invoke-virtual {v0, p7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3934
    invoke-virtual {v0, p8}, Landroid/os/Parcel;->writeInt(I)V

    .line 3935
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x24

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3936
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3937
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3938
    .local v2, "res":I
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3939
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3940
    return v2

    .line 3927
    .end local v2    # "res":I
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public bootAnimationComplete()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 6122
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6123
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6124
    .local v1, "reply":Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6125
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xee

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 6126
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6127
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6128
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6129
    return-void
.end method

.method public broadcastIntent(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZI)I
    .locals 7
    .param p1, "caller"    # Landroid/app/IApplicationThread;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "resolvedType"    # Ljava/lang/String;
    .param p4, "resultTo"    # Landroid/content/IIntentReceiver;
    .param p5, "resultCode"    # I
    .param p6, "resultData"    # Ljava/lang/String;
    .param p7, "map"    # Landroid/os/Bundle;
    .param p8, "requiredPermissions"    # [Ljava/lang/String;
    .param p9, "appOp"    # I
    .param p10, "options"    # Landroid/os/Bundle;
    .param p11, "serialized"    # Z
    .param p12, "sticky"    # Z
    .param p13, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3182
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3183
    .local v1, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 3184
    .local v2, "reply":Landroid/os/Parcel;
    const-string v4, "android.app.IActivityManager"

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3185
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/app/IApplicationThread;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    :goto_0
    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 3186
    const/4 v4, 0x0

    invoke-virtual {p2, v1, v4}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 3187
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3188
    if-eqz p4, :cond_1

    invoke-interface {p4}, Landroid/content/IIntentReceiver;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    :goto_1
    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 3189
    invoke-virtual {v1, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 3190
    invoke-virtual {v1, p6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3191
    invoke-virtual {v1, p7}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 3192
    invoke-virtual {v1, p8}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 3193
    move/from16 v0, p9

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3194
    move-object/from16 v0, p10

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 3195
    if-eqz p11, :cond_2

    const/4 v4, 0x1

    :goto_2
    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 3196
    if-eqz p12, :cond_3

    const/4 v4, 0x1

    :goto_3
    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 3197
    move/from16 v0, p13

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3198
    iget-object v4, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0xe

    const/4 v6, 0x0

    invoke-interface {v4, v5, v1, v2, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3199
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 3200
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 3201
    .local v3, "res":I
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 3202
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3203
    return v3

    .line 3185
    .end local v3    # "res":I
    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .line 3188
    :cond_1
    const/4 v4, 0x0

    goto :goto_1

    .line 3195
    :cond_2
    const/4 v4, 0x0

    goto :goto_2

    .line 3196
    :cond_3
    const/4 v4, 0x0

    goto :goto_3
.end method

.method public cancelIntentSender(Landroid/content/IIntentSender;)V
    .locals 5
    .param p1, "sender"    # Landroid/content/IIntentSender;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4206
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4207
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4208
    .local v1, "reply":Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4209
    invoke-interface {p1}, Landroid/content/IIntentSender;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 4210
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x40

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4211
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4212
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4213
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4214
    return-void
.end method

.method public checkGrantUriPermission(ILjava/lang/String;Landroid/net/Uri;II)I
    .locals 6
    .param p1, "callingUid"    # I
    .param p2, "targetPkg"    # Ljava/lang/String;
    .param p3, "uri"    # Landroid/net/Uri;
    .param p4, "modeFlags"    # I
    .param p5, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 5069
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5070
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5071
    .local v1, "reply":Landroid/os/Parcel;
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5072
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5073
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5074
    invoke-virtual {p3, v0, v5}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    .line 5075
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 5076
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 5077
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x77

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5078
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5079
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 5080
    .local v2, "res":I
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5081
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5082
    return v2
.end method

.method public checkPermission(Ljava/lang/String;II)I
    .locals 6
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4296
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4297
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4298
    .local v1, "reply":Landroid/os/Parcel;
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4299
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4300
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4301
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 4302
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x35

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4303
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4304
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 4305
    .local v2, "res":I
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4306
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4307
    return v2
.end method

.method public checkPermissionWithToken(Ljava/lang/String;IILandroid/os/IBinder;)I
    .locals 6
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "uid"    # I
    .param p4, "callerToken"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4311
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4312
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4313
    .local v1, "reply":Landroid/os/Parcel;
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4314
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4315
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4316
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 4317
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 4318
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xf2

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4319
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4320
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 4321
    .local v2, "res":I
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4322
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4323
    return v2
.end method

.method public checkUriPermission(Landroid/net/Uri;IIIILandroid/os/IBinder;)I
    .locals 6
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "pid"    # I
    .param p3, "uid"    # I
    .param p4, "mode"    # I
    .param p5, "userId"    # I
    .param p6, "callerToken"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 4342
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4343
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4344
    .local v1, "reply":Landroid/os/Parcel;
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4345
    invoke-virtual {p1, v0, v5}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    .line 4346
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4347
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 4348
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 4349
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 4350
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 4351
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x36

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4352
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4353
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 4354
    .local v2, "res":I
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4355
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4356
    return v2
.end method

.method public clearApplicationUserData(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;I)Z
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "observer"    # Landroid/content/pm/IPackageDataObserver;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 4327
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4328
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4329
    .local v1, "reply":Landroid/os/Parcel;
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4330
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4331
    if-eqz p2, :cond_1

    invoke-interface {p2}, Landroid/content/pm/IPackageDataObserver;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 4332
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 4333
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x4e

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4334
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4335
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 4336
    .local v2, "res":Z
    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4337
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4338
    return v2

    .line 4331
    .end local v2    # "res":Z
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public clearPendingBackup()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4031
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4032
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4033
    .local v1, "reply":Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4034
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xa0

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4035
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4036
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4037
    return-void
.end method

.method public closeSystemDialogs(Ljava/lang/String;)V
    .locals 5
    .param p1, "reason"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4801
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4802
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4803
    .local v1, "reply":Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4804
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4805
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x61

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4806
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4807
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4808
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4809
    return-void
.end method

.method public convertFromTranslucent(Landroid/os/IBinder;)Z
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 4887
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4888
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4889
    .local v1, "reply":Landroid/os/Parcel;
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4890
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 4891
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xae

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4892
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4893
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 4894
    .local v2, "res":Z
    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4895
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4896
    return v2
.end method

.method public convertToTranslucent(Landroid/os/IBinder;Landroid/app/ActivityOptions;)Z
    .locals 6
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "options"    # Landroid/app/ActivityOptions;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 4901
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4902
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4903
    .local v1, "reply":Landroid/os/Parcel;
    const-string v4, "android.app.IActivityManager"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4904
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 4905
    if-nez p2, :cond_0

    .line 4906
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 4911
    :goto_0
    iget-object v4, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0xaf

    invoke-interface {v4, v5, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4912
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4913
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1

    .line 4914
    .local v2, "res":Z
    :goto_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4915
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4916
    return v2

    .line 4908
    .end local v2    # "res":Z
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4909
    invoke-virtual {p2}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    goto :goto_0

    :cond_1
    move v2, v3

    .line 4913
    goto :goto_1
.end method

.method public crashApplication(IILjava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "uid"    # I
    .param p2, "initialPid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4988
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4989
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4990
    .local v1, "reply":Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4991
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4992
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4993
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4994
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4995
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x72

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4996
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4997
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4998
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4999
    return-void
.end method

.method public createStackOnDisplay(I)Landroid/app/IActivityContainer;
    .locals 7
    .param p1, "displayId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 5853
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5854
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5855
    .local v1, "reply":Landroid/os/Parcel;
    const-string v4, "android.app.IActivityManager"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5856
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5857
    iget-object v4, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0x11a

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5858
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5859
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 5861
    .local v3, "result":I
    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 5862
    invoke-virtual {v1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/app/IActivityContainer$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IActivityContainer;

    move-result-object v2

    .line 5866
    .local v2, "res":Landroid/app/IActivityContainer;
    :goto_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5867
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5868
    return-object v2

    .line 5864
    .end local v2    # "res":Landroid/app/IActivityContainer;
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "res":Landroid/app/IActivityContainer;
    goto :goto_0
.end method

.method public createStackOnDisplay(II)V
    .locals 5
    .param p1, "stackId"    # I
    .param p2, "displayId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3565
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3566
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3567
    .local v1, "reply":Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3568
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3569
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3570
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x26af

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3571
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3572
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3573
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3574
    return-void
.end method

.method public createVirtualActivityContainer(Landroid/os/IBinder;Landroid/app/IActivityContainerCallback;)Landroid/app/IActivityContainer;
    .locals 7
    .param p1, "parentActivityToken"    # Landroid/os/IBinder;
    .param p2, "callback"    # Landroid/app/IActivityContainerCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 5820
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5821
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5822
    .local v1, "reply":Landroid/os/Parcel;
    const-string v4, "android.app.IActivityManager"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5823
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 5824
    if-nez p2, :cond_0

    const/4 v4, 0x0

    :goto_0
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 5825
    iget-object v4, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0xa8

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5826
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5827
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 5829
    .local v3, "result":I
    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 5830
    invoke-virtual {v1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/app/IActivityContainer$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IActivityContainer;

    move-result-object v2

    .line 5834
    .local v2, "res":Landroid/app/IActivityContainer;
    :goto_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5835
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5836
    return-object v2

    .line 5824
    .end local v2    # "res":Landroid/app/IActivityContainer;
    .end local v3    # "result":I
    :cond_0
    invoke-interface {p2}, Landroid/app/IActivityContainerCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    goto :goto_0

    .line 5832
    .restart local v3    # "result":I
    :cond_1
    const/4 v2, 0x0

    .restart local v2    # "res":Landroid/app/IActivityContainer;
    goto :goto_1
.end method

.method public deleteActivityContainer(Landroid/app/IActivityContainer;)V
    .locals 5
    .param p1, "activityContainer"    # Landroid/app/IActivityContainer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 5841
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5842
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5843
    .local v1, "reply":Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5844
    invoke-interface {p1}, Landroid/app/IActivityContainer;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 5845
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xba

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5846
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5847
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5848
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5849
    return-void
.end method

.method public dumpHeap(Ljava/lang/String;IZLjava/lang/String;Landroid/os/ParcelFileDescriptor;)Z
    .locals 7
    .param p1, "process"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "managed"    # Z
    .param p4, "path"    # Ljava/lang/String;
    .param p5, "fd"    # Landroid/os/ParcelFileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 5087
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5088
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5089
    .local v1, "reply":Landroid/os/Parcel;
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5090
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5091
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5092
    if-eqz p3, :cond_0

    move v3, v4

    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 5093
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5094
    if-eqz p5, :cond_1

    .line 5095
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 5096
    invoke-virtual {p5, v0, v4}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    .line 5100
    :goto_1
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v6, 0x78

    invoke-interface {v3, v6, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5101
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5102
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_2

    move v2, v4

    .line 5103
    .local v2, "res":Z
    :goto_2
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5104
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5105
    return v2

    .end local v2    # "res":Z
    :cond_0
    move v3, v5

    .line 5092
    goto :goto_0

    .line 5098
    :cond_1
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    :cond_2
    move v2, v5

    .line 5102
    goto :goto_2
.end method

.method public dumpHeapFinished(Ljava/lang/String;)V
    .locals 5
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 6162
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6163
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6164
    .local v1, "reply":Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6165
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6166
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x121

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 6167
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6168
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6169
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6170
    return-void
.end method

.method public enterSafeMode()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4531
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4532
    .local v0, "data":Landroid/os/Parcel;
    const-string v1, "android.app.IActivityManager"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4533
    iget-object v1, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x42

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4534
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4535
    return-void
.end method

.method public finishActivity(Landroid/os/IBinder;ILandroid/content/Intent;Z)Z
    .locals 7
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "resultCode"    # I
    .param p3, "resultData"    # Landroid/content/Intent;
    .param p4, "finishTask"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 3053
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3054
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3055
    .local v1, "reply":Landroid/os/Parcel;
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3056
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 3057
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3058
    if-eqz p3, :cond_0

    .line 3059
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 3060
    invoke-virtual {p3, v0, v5}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 3064
    :goto_0
    if-eqz p4, :cond_1

    move v3, v4

    :goto_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3065
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v6, 0xb

    invoke-interface {v3, v6, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3066
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3067
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_2

    move v2, v4

    .line 3068
    .local v2, "res":Z
    :goto_2
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3069
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3070
    return v2

    .line 3062
    .end local v2    # "res":Z
    :cond_0
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :cond_1
    move v3, v5

    .line 3064
    goto :goto_1

    :cond_2
    move v2, v5

    .line 3067
    goto :goto_2
.end method

.method public finishActivityAffinity(Landroid/os/IBinder;)Z
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 3086
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3087
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3088
    .local v1, "reply":Landroid/os/Parcel;
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3089
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 3090
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x95

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3091
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3092
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 3093
    .local v2, "res":Z
    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3094
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3095
    return v2
.end method

.method public finishHeavyWeightApp()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4876
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4877
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4878
    .local v1, "reply":Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4879
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x6d

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4880
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4881
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4882
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4883
    return-void
.end method

.method public finishInstrumentation(Landroid/app/IApplicationThread;ILandroid/os/Bundle;)V
    .locals 5
    .param p1, "target"    # Landroid/app/IApplicationThread;
    .param p2, "resultCode"    # I
    .param p3, "results"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4086
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4087
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4088
    .local v1, "reply":Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4089
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/app/IApplicationThread;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 4090
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4091
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 4092
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x2d

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4093
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4094
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4095
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4096
    return-void

    .line 4089
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public finishReceiver(Landroid/os/IBinder;ILjava/lang/String;Landroid/os/Bundle;ZI)V
    .locals 5
    .param p1, "who"    # Landroid/os/IBinder;
    .param p2, "resultCode"    # I
    .param p3, "resultData"    # Ljava/lang/String;
    .param p4, "map"    # Landroid/os/Bundle;
    .param p5, "abortBroadcast"    # Z
    .param p6, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 3222
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3223
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3224
    .local v1, "reply":Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3225
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 3226
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3227
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3228
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 3229
    if-eqz p5, :cond_0

    move v2, v3

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3230
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeInt(I)V

    .line 3231
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x10

    invoke-interface {v2, v4, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3232
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3233
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3234
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3235
    return-void

    .line 3229
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public finishSubActivity(Landroid/os/IBinder;Ljava/lang/String;I)V
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "resultWho"    # Ljava/lang/String;
    .param p3, "requestCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3074
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3075
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3076
    .local v1, "reply":Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3077
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 3078
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3079
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3080
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x20

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3081
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3082
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3083
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3084
    return-void
.end method

.method public finishVoiceTask(Landroid/service/voice/IVoiceInteractionSession;)V
    .locals 5
    .param p1, "session"    # Landroid/service/voice/IVoiceInteractionSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3098
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3099
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3100
    .local v1, "reply":Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3101
    invoke-interface {p1}, Landroid/service/voice/IVoiceInteractionSession;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 3102
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xe0

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3103
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3104
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3105
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3106
    return-void
.end method

.method public forceStopPackage(Ljava/lang/String;I)V
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4680
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4681
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4682
    .local v1, "reply":Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4683
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4684
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4685
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x4f

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4686
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4687
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4688
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4689
    return-void
.end method

.method public getActivityClassForToken(Landroid/os/IBinder;)Landroid/content/ComponentName;
    .locals 6
    .param p1, "token"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4146
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4147
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4148
    .local v1, "reply":Landroid/os/Parcel;
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4149
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 4150
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x31

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4151
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4152
    invoke-static {v1}, Landroid/content/ComponentName;->readFromParcel(Landroid/os/Parcel;)Landroid/content/ComponentName;

    move-result-object v2

    .line 4153
    .local v2, "res":Landroid/content/ComponentName;
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4154
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4155
    return-object v2
.end method

.method public getActivityDisplayId(Landroid/os/IBinder;)I
    .locals 6
    .param p1, "activityToken"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 5874
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5875
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 5876
    .local v2, "reply":Landroid/os/Parcel;
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5877
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 5878
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xb9

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v2, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5879
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 5880
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 5881
    .local v1, "displayId":I
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5882
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 5883
    return v1
.end method

.method public getActivityOptions(Landroid/os/IBinder;)Landroid/app/ActivityOptions;
    .locals 7
    .param p1, "token"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4920
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4921
    .local v1, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 4922
    .local v3, "reply":Landroid/os/Parcel;
    const-string v4, "android.app.IActivityManager"

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4923
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 4924
    iget-object v4, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0xdc

    const/4 v6, 0x0

    invoke-interface {v4, v5, v1, v3, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4925
    invoke-virtual {v3}, Landroid/os/Parcel;->readException()V

    .line 4926
    invoke-virtual {v3}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    .line 4927
    .local v0, "bundle":Landroid/os/Bundle;
    if-nez v0, :cond_0

    const/4 v2, 0x0

    .line 4928
    .local v2, "options":Landroid/app/ActivityOptions;
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4929
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 4930
    return-object v2

    .line 4927
    .end local v2    # "options":Landroid/app/ActivityOptions;
    :cond_0
    new-instance v2, Landroid/app/ActivityOptions;

    invoke-direct {v2, v0}, Landroid/app/ActivityOptions;-><init>(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public getAllStackInfos()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/app/ActivityManager$StackInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3605
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3606
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 3607
    .local v2, "reply":Landroid/os/Parcel;
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3608
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xab

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v2, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3609
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 3610
    sget-object v3, Landroid/app/ActivityManager$StackInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v1

    .line 3611
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ActivityManager$StackInfo;>;"
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3612
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 3613
    return-object v1
.end method

.method public getAppTaskThumbnailSize()Landroid/graphics/Point;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3389
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3390
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3391
    .local v1, "reply":Landroid/os/Parcel;
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3392
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xeb

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3393
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3394
    sget-object v3, Landroid/graphics/Point;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Point;

    .line 3395
    .local v2, "size":Landroid/graphics/Point;
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3396
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3397
    return-object v2
.end method

.method public getAppTasks(Ljava/lang/String;)Ljava/util/List;
    .locals 8
    .param p1, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/app/IAppTask;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3352
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3353
    .local v1, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 3354
    .local v3, "reply":Landroid/os/Parcel;
    const-string v5, "android.app.IActivityManager"

    invoke-virtual {v1, v5}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3355
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3356
    iget-object v5, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v6, 0xdd

    const/4 v7, 0x0

    invoke-interface {v5, v6, v1, v3, v7}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3357
    invoke-virtual {v3}, Landroid/os/Parcel;->readException()V

    .line 3358
    const/4 v2, 0x0

    .line 3359
    .local v2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/IAppTask;>;"
    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 3360
    .local v0, "N":I
    if-ltz v0, :cond_0

    .line 3361
    new-instance v2, Ljava/util/ArrayList;

    .end local v2    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/IAppTask;>;"
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 3362
    .restart local v2    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/IAppTask;>;"
    :goto_0
    if-lez v0, :cond_0

    .line 3363
    invoke-virtual {v3}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/app/IAppTask$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IAppTask;

    move-result-object v4

    .line 3364
    .local v4, "task":Landroid/app/IAppTask;
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3365
    add-int/lit8 v0, v0, -0x1

    .line 3366
    goto :goto_0

    .line 3368
    .end local v4    # "task":Landroid/app/IAppTask;
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3369
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 3370
    return-object v2
.end method

.method public getAssistContextExtras(I)Landroid/os/Bundle;
    .locals 6
    .param p1, "requestType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 5615
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5616
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5617
    .local v1, "reply":Landroid/os/Parcel;
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5618
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5619
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xa2

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5620
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5621
    invoke-virtual {v1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v2

    .line 5622
    .local v2, "res":Landroid/os/Bundle;
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5623
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5624
    return-object v2
.end method

.method public getCallingActivity(Landroid/os/IBinder;)Landroid/content/ComponentName;
    .locals 6
    .param p1, "token"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3340
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3341
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3342
    .local v1, "reply":Landroid/os/Parcel;
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3343
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 3344
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x16

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3345
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3346
    invoke-static {v1}, Landroid/content/ComponentName;->readFromParcel(Landroid/os/Parcel;)Landroid/content/ComponentName;

    move-result-object v2

    .line 3347
    .local v2, "res":Landroid/content/ComponentName;
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3348
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3349
    return-object v2
.end method

.method public getCallingPackage(Landroid/os/IBinder;)Ljava/lang/String;
    .locals 6
    .param p1, "token"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3327
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3328
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3329
    .local v1, "reply":Landroid/os/Parcel;
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3330
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 3331
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x15

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3332
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3333
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3334
    .local v2, "res":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3335
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3336
    return-object v2
.end method

.method public getConfiguration()Landroid/content/res/Configuration;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4099
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4100
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4101
    .local v1, "reply":Landroid/os/Parcel;
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4102
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x2e

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4103
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4104
    sget-object v3, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/res/Configuration;

    .line 4105
    .local v2, "res":Landroid/content/res/Configuration;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4106
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4107
    return-object v2
.end method

.method public getContentProvider(Landroid/app/IApplicationThread;Ljava/lang/String;IZ)Landroid/app/IActivityManager$ContentProviderHolder;
    .locals 7
    .param p1, "caller"    # Landroid/app/IApplicationThread;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .param p4, "stable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 3723
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3724
    .local v1, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 3725
    .local v2, "reply":Landroid/os/Parcel;
    const-string v4, "android.app.IActivityManager"

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3726
    if-eqz p1, :cond_1

    invoke-interface {p1}, Landroid/app/IApplicationThread;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    :goto_0
    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 3727
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3728
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3729
    if-eqz p4, :cond_2

    const/4 v4, 0x1

    :goto_1
    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 3730
    iget-object v4, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v6, 0x1d

    invoke-interface {v4, v6, v1, v2, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3731
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 3732
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 3733
    .local v3, "res":I
    const/4 v0, 0x0

    .line 3734
    .local v0, "cph":Landroid/app/IActivityManager$ContentProviderHolder;
    if-eqz v3, :cond_0

    .line 3735
    sget-object v4, Landroid/app/IActivityManager$ContentProviderHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, v2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "cph":Landroid/app/IActivityManager$ContentProviderHolder;
    check-cast v0, Landroid/app/IActivityManager$ContentProviderHolder;

    .line 3737
    .restart local v0    # "cph":Landroid/app/IActivityManager$ContentProviderHolder;
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3738
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 3739
    return-object v0

    .line 3726
    .end local v0    # "cph":Landroid/app/IActivityManager$ContentProviderHolder;
    .end local v3    # "res":I
    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    :cond_2
    move v4, v5

    .line 3729
    goto :goto_1
.end method

.method public getContentProviderExternal(Ljava/lang/String;ILandroid/os/IBinder;)Landroid/app/IActivityManager$ContentProviderHolder;
    .locals 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "token"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3743
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3744
    .local v1, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 3745
    .local v2, "reply":Landroid/os/Parcel;
    const-string v4, "android.app.IActivityManager"

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3746
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3747
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3748
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 3749
    iget-object v4, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0x8d

    const/4 v6, 0x0

    invoke-interface {v4, v5, v1, v2, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3750
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 3751
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 3752
    .local v3, "res":I
    const/4 v0, 0x0

    .line 3753
    .local v0, "cph":Landroid/app/IActivityManager$ContentProviderHolder;
    if-eqz v3, :cond_0

    .line 3754
    sget-object v4, Landroid/app/IActivityManager$ContentProviderHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, v2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "cph":Landroid/app/IActivityManager$ContentProviderHolder;
    check-cast v0, Landroid/app/IActivityManager$ContentProviderHolder;

    .line 3756
    .restart local v0    # "cph":Landroid/app/IActivityManager$ContentProviderHolder;
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3757
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 3758
    return-object v0
.end method

.method public getCurrentUser()Landroid/content/pm/UserInfo;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 5263
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5264
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5265
    .local v1, "reply":Landroid/os/Parcel;
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5266
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x91

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5267
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5268
    sget-object v3, Landroid/content/pm/UserInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    .line 5269
    .local v2, "userInfo":Landroid/content/pm/UserInfo;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5270
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5271
    return-object v2
.end method

.method public getCurrentUserIdNoLock()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 5250
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5251
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5252
    .local v1, "reply":Landroid/os/Parcel;
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5253
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xfa3

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5254
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5255
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 5256
    .local v2, "result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5257
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5258
    return v2
.end method

.method public getDeviceConfigurationInfo()Landroid/content/pm/ConfigurationInfo;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4706
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4707
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4708
    .local v1, "reply":Landroid/os/Parcel;
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4709
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x54

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4710
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4711
    sget-object v3, Landroid/content/pm/ConfigurationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ConfigurationInfo;

    .line 4712
    .local v2, "res":Landroid/content/pm/ConfigurationInfo;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4713
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4714
    return-object v2
.end method

.method public getFocusedStackId()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3685
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3686
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 3687
    .local v2, "reply":Landroid/os/Parcel;
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3688
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x11b

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v2, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3689
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 3690
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 3691
    .local v1, "focusedStackId":I
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3692
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 3693
    return v1
.end method

.method public getFrontActivityScreenCompatMode()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 5135
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5136
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 5137
    .local v2, "reply":Landroid/os/Parcel;
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5138
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x7c

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v2, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5139
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 5140
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 5141
    .local v1, "mode":I
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 5142
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5143
    return v1
.end method

.method public getGlobalTransform()Landroid/view/animation/Transformation;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 5800
    invoke-virtual {p0}, Landroid/app/ActivityManagerProxy;->getLenovoGlobalTransform()Landroid/view/animation/LenovoTransformation;

    move-result-object v0

    .line 5801
    .local v0, "mLenovoTransformation":Landroid/view/animation/LenovoTransformation;
    invoke-static {v0}, Landroid/view/animation/LenovoTransformation;->switchToTransformation(Landroid/view/animation/LenovoTransformation;)Landroid/view/animation/Transformation;

    move-result-object v1

    return-object v1
.end method

.method public getIntentForIntentSender(Landroid/content/IIntentSender;)Landroid/content/Intent;
    .locals 6
    .param p1, "sender"    # Landroid/content/IIntentSender;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 5400
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5401
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5402
    .local v1, "reply":Landroid/os/Parcel;
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5403
    invoke-interface {p1}, Landroid/content/IIntentSender;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 5404
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xa1

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5405
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5406
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Intent;

    move-object v2, v3

    .line 5408
    .local v2, "res":Landroid/content/Intent;
    :goto_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5409
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5410
    return-object v2

    .line 5406
    .end local v2    # "res":Landroid/content/Intent;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getIntentSender(ILjava/lang/String;Landroid/os/IBinder;Ljava/lang/String;I[Landroid/content/Intent;[Ljava/lang/String;ILandroid/os/Bundle;I)Landroid/content/IIntentSender;
    .locals 7
    .param p1, "type"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "token"    # Landroid/os/IBinder;
    .param p4, "resultWho"    # Ljava/lang/String;
    .param p5, "requestCode"    # I
    .param p6, "intents"    # [Landroid/content/Intent;
    .param p7, "resolvedTypes"    # [Ljava/lang/String;
    .param p8, "flags"    # I
    .param p9, "options"    # Landroid/os/Bundle;
    .param p10, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4174
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4175
    .local v1, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 4176
    .local v2, "reply":Landroid/os/Parcel;
    const-string v4, "android.app.IActivityManager"

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4177
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4178
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4179
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 4180
    invoke-virtual {v1, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4181
    invoke-virtual {v1, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 4182
    if-eqz p6, :cond_0

    .line 4183
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 4184
    const/4 v4, 0x0

    invoke-virtual {v1, p6, v4}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 4185
    invoke-virtual {v1, p7}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 4189
    :goto_0
    invoke-virtual {v1, p8}, Landroid/os/Parcel;->writeInt(I)V

    .line 4190
    if-eqz p9, :cond_1

    .line 4191
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 4192
    const/4 v4, 0x0

    move-object/from16 v0, p9

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 4196
    :goto_1
    move/from16 v0, p10

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4197
    iget-object v4, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0x3f

    const/4 v6, 0x0

    invoke-interface {v4, v5, v1, v2, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4198
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 4199
    invoke-virtual {v2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v3

    .line 4201
    .local v3, "res":Landroid/content/IIntentSender;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4202
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 4203
    return-object v3

    .line 4187
    .end local v3    # "res":Landroid/content/IIntentSender;
    :cond_0
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 4194
    :cond_1
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1
.end method

.method public getLaunchedFromPackage(Landroid/os/IBinder;)Ljava/lang/String;
    .locals 6
    .param p1, "activityToken"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 5539
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5540
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5541
    .local v1, "reply":Landroid/os/Parcel;
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5542
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 5543
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xa4

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5544
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5545
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 5546
    .local v2, "result":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5547
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5548
    return-object v2
.end method

.method public getLaunchedFromUid(Landroid/os/IBinder;)I
    .locals 6
    .param p1, "activityToken"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 5526
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5527
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5528
    .local v1, "reply":Landroid/os/Parcel;
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5529
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 5530
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x96

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5531
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5532
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 5533
    .local v2, "result":I
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5534
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5535
    return v2
.end method

.method public getLenovoGlobalTransform()Landroid/view/animation/LenovoTransformation;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 5805
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5806
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 5807
    .local v2, "reply":Landroid/os/Parcel;
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5808
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x7d3

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v2, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5809
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 5810
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-nez v3, :cond_0

    const/4 v1, 0x0

    .line 5813
    .local v1, "mTransformation":Landroid/view/animation/LenovoTransformation;
    :goto_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5814
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 5815
    return-object v1

    .line 5810
    .end local v1    # "mTransformation":Landroid/view/animation/LenovoTransformation;
    :cond_0
    sget-object v3, Landroid/view/animation/LenovoTransformation;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/animation/LenovoTransformation;

    move-object v1, v3

    goto :goto_0
.end method

.method public getLockTaskModeState()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 5958
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5959
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 5960
    .local v2, "reply":Landroid/os/Parcel;
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5961
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x11f

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v2, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5962
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 5963
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 5964
    .local v1, "lockTaskModeState":I
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5965
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 5966
    return v1
.end method

.method public getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V
    .locals 5
    .param p1, "outInfo"    # Landroid/app/ActivityManager$MemoryInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4448
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4449
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4450
    .local v1, "reply":Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4451
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x4c

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4452
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4453
    invoke-virtual {p1, v1}, Landroid/app/ActivityManager$MemoryInfo;->readFromParcel(Landroid/os/Parcel;)V

    .line 4454
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4455
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4456
    return-void
.end method

.method public getMyMemoryState(Landroid/app/ActivityManager$RunningAppProcessInfo;)V
    .locals 5
    .param p1, "outInfo"    # Landroid/app/ActivityManager$RunningAppProcessInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4694
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4695
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4696
    .local v1, "reply":Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4697
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x8f

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4698
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4699
    invoke-virtual {p1, v1}, Landroid/app/ActivityManager$RunningAppProcessInfo;->readFromParcel(Landroid/os/Parcel;)V

    .line 4700
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4701
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4702
    return-void
.end method

.method public getPackageAskScreenCompat(Ljava/lang/String;)Z
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 5184
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5185
    .local v1, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 5186
    .local v2, "reply":Landroid/os/Parcel;
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5187
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5188
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x80

    invoke-interface {v3, v4, v1, v2, v0}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5189
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 5190
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    .line 5191
    .local v0, "ask":Z
    :cond_0
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 5192
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5193
    return v0
.end method

.method public getPackageForIntentSender(Landroid/content/IIntentSender;)Ljava/lang/String;
    .locals 6
    .param p1, "sender"    # Landroid/content/IIntentSender;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4216
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4217
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4218
    .local v1, "reply":Landroid/os/Parcel;
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4219
    invoke-interface {p1}, Landroid/content/IIntentSender;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 4220
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x41

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4221
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4222
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 4223
    .local v2, "res":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4224
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4225
    return-object v2
.end method

.method public getPackageForToken(Landroid/os/IBinder;)Ljava/lang/String;
    .locals 6
    .param p1, "token"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4159
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4160
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4161
    .local v1, "reply":Landroid/os/Parcel;
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4162
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 4163
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x32

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4164
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4165
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 4166
    .local v2, "res":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4167
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4168
    return-object v2
.end method

.method public getPackageProcessState(Ljava/lang/String;Ljava/lang/String;)I
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 6214
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6215
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6216
    .local v1, "reply":Landroid/os/Parcel;
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6217
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6218
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6219
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x126

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 6220
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6221
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 6222
    .local v2, "res":I
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6223
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6224
    return v2
.end method

.method public getPackageScreenCompatMode(Ljava/lang/String;)I
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 5158
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5159
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 5160
    .local v2, "reply":Landroid/os/Parcel;
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5161
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5162
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x7e

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v2, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5163
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 5164
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 5165
    .local v1, "mode":I
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 5166
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5167
    return v1
.end method

.method public getPersistedUriPermissions(Ljava/lang/String;Z)Landroid/content/pm/ParceledListSlice;
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "incoming"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Landroid/content/pm/ParceledListSlice",
            "<",
            "Landroid/content/UriPermission;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 4421
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4422
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 4423
    .local v2, "reply":Landroid/os/Parcel;
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4424
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4425
    if-eqz p2, :cond_0

    const/4 v3, 0x1

    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 4426
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0xb6

    invoke-interface {v3, v5, v0, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4427
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 4428
    sget-object v3, Landroid/content/pm/ParceledListSlice;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    invoke-interface {v3, v2}, Landroid/os/Parcelable$ClassLoaderCreator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ParceledListSlice;

    .line 4430
    .local v1, "perms":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/content/UriPermission;>;"
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4431
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 4432
    return-object v1

    .end local v1    # "perms":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/content/UriPermission;>;"
    :cond_0
    move v3, v4

    .line 4425
    goto :goto_0
.end method

.method public getProcessLimit()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4271
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4272
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4273
    .local v1, "reply":Landroid/os/Parcel;
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4274
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x34

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4275
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4276
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 4277
    .local v2, "res":I
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4278
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4279
    return v2
.end method

.method public getProcessMemoryInfo([I)[Landroid/os/Debug$MemoryInfo;
    .locals 6
    .param p1, "pids"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4813
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4814
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4815
    .local v1, "reply":Landroid/os/Parcel;
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4816
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 4817
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x62

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4818
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4819
    sget-object v3, Landroid/os/Debug$MemoryInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/os/Debug$MemoryInfo;

    .line 4820
    .local v2, "res":[Landroid/os/Debug$MemoryInfo;
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4821
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4822
    return-object v2
.end method

.method public getProcessPss([I)[J
    .locals 6
    .param p1, "pids"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 5441
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5442
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5443
    .local v1, "reply":Landroid/os/Parcel;
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5444
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 5445
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x89

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5446
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5447
    invoke-virtual {v1}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v2

    .line 5448
    .local v2, "res":[J
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5449
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5450
    return-object v2
.end method

.method public getProcessesInErrorState()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/app/ActivityManager$ProcessErrorStateInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3482
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3483
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 3484
    .local v2, "reply":Landroid/os/Parcel;
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3485
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x4d

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v2, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3486
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 3487
    sget-object v3, Landroid/app/ActivityManager$ProcessErrorStateInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v1

    .line 3489
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ActivityManager$ProcessErrorStateInfo;>;"
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3490
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 3491
    return-object v1
.end method

.method public getProviderMimeType(Landroid/net/Uri;I)Ljava/lang/String;
    .locals 6
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 5002
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5003
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5004
    .local v1, "reply":Landroid/os/Parcel;
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5005
    invoke-virtual {p1, v0, v5}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    .line 5006
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5007
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x73

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5008
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5009
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 5010
    .local v2, "res":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5011
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5012
    return-object v2
.end method

.method public getRecentTasks(III)Ljava/util/List;
    .locals 6
    .param p1, "maxNum"    # I
    .param p2, "flags"    # I
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)",
            "Ljava/util/List",
            "<",
            "Landroid/app/ActivityManager$RecentTaskInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3426
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3427
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 3428
    .local v2, "reply":Landroid/os/Parcel;
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3429
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3430
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3431
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3432
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x3c

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v2, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3433
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 3434
    sget-object v3, Landroid/app/ActivityManager$RecentTaskInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v1

    .line 3436
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3437
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 3438
    return-object v1
.end method

.method public getRequestedOrientation(Landroid/os/IBinder;)I
    .locals 6
    .param p1, "token"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4133
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4134
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4135
    .local v1, "reply":Landroid/os/Parcel;
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4136
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 4137
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x47

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4138
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4139
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 4140
    .local v2, "res":I
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4141
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4142
    return v2
.end method

.method public getRunningAppProcesses()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/app/ActivityManager$RunningAppProcessInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3495
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3496
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 3497
    .local v2, "reply":Landroid/os/Parcel;
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3498
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x53

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v2, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3499
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 3500
    sget-object v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v1

    .line 3502
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3503
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 3504
    return-object v1
.end method

.method public getRunningExternalApplications()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3508
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3509
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 3510
    .local v2, "reply":Landroid/os/Parcel;
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3511
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x6c

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v2, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3512
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 3513
    sget-object v3, Landroid/content/pm/ApplicationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v1

    .line 3515
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ApplicationInfo;>;"
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3516
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 3517
    return-object v1
.end method

.method public getRunningServiceControlPanel(Landroid/content/ComponentName;)Landroid/app/PendingIntent;
    .locals 6
    .param p1, "service"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 3839
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3840
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3841
    .local v1, "reply":Landroid/os/Parcel;
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3842
    invoke-virtual {p1, v0, v5}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    .line 3843
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x21

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3844
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3845
    invoke-static {v1}, Landroid/app/PendingIntent;->readPendingIntentOrNullFromParcel(Landroid/os/Parcel;)Landroid/app/PendingIntent;

    move-result-object v2

    .line 3846
    .local v2, "res":Landroid/app/PendingIntent;
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3847
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3848
    return-object v2
.end method

.method public getRunningUserIds()[I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 5289
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5290
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5291
    .local v1, "reply":Landroid/os/Parcel;
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5292
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x9d

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5293
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5294
    invoke-virtual {v1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    .line 5295
    .local v2, "result":[I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5296
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5297
    return-object v2
.end method

.method public getServices(II)Ljava/util/List;
    .locals 8
    .param p1, "maxNum"    # I
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<",
            "Landroid/app/ActivityManager$RunningServiceInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3457
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3458
    .local v1, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v4

    .line 3459
    .local v4, "reply":Landroid/os/Parcel;
    const-string v5, "android.app.IActivityManager"

    invoke-virtual {v1, v5}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3460
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3461
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3462
    iget-object v5, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v6, 0x51

    const/4 v7, 0x0

    invoke-interface {v5, v6, v1, v4, v7}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3463
    invoke-virtual {v4}, Landroid/os/Parcel;->readException()V

    .line 3464
    const/4 v3, 0x0

    .line 3465
    .local v3, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 3466
    .local v0, "N":I
    if-ltz v0, :cond_0

    .line 3467
    new-instance v3, Ljava/util/ArrayList;

    .end local v3    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 3468
    .restart local v3    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    :goto_0
    if-lez v0, :cond_0

    .line 3469
    sget-object v5, Landroid/app/ActivityManager$RunningServiceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, v4}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 3472
    .local v2, "info":Landroid/app/ActivityManager$RunningServiceInfo;
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3473
    add-int/lit8 v0, v0, -0x1

    .line 3474
    goto :goto_0

    .line 3476
    .end local v2    # "info":Landroid/app/ActivityManager$RunningServiceInfo;
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3477
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 3478
    return-object v3
.end method

.method public getStackInfo(I)Landroid/app/ActivityManager$StackInfo;
    .locals 7
    .param p1, "stackId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3618
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3619
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 3620
    .local v2, "reply":Landroid/os/Parcel;
    const-string v4, "android.app.IActivityManager"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3621
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3622
    iget-object v4, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0xad

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v2, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3623
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 3624
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 3625
    .local v3, "res":I
    const/4 v1, 0x0

    .line 3626
    .local v1, "info":Landroid/app/ActivityManager$StackInfo;
    if-eqz v3, :cond_0

    .line 3627
    sget-object v4, Landroid/app/ActivityManager$StackInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, v2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "info":Landroid/app/ActivityManager$StackInfo;
    check-cast v1, Landroid/app/ActivityManager$StackInfo;

    .line 3629
    .restart local v1    # "info":Landroid/app/ActivityManager$StackInfo;
    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3630
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 3631
    return-object v1
.end method

.method public getTagForIntentSender(Landroid/content/IIntentSender;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "sender"    # Landroid/content/IIntentSender;
    .param p2, "prefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 5415
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5416
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5417
    .local v1, "reply":Landroid/os/Parcel;
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5418
    invoke-interface {p1}, Landroid/content/IIntentSender;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 5419
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5420
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xd3

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5421
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5422
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 5423
    .local v2, "res":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5424
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5425
    return-object v2
.end method

.method public getTaskDescriptionIcon(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 6
    .param p1, "filename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 6025
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6026
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 6027
    .local v2, "reply":Landroid/os/Parcel;
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6028
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6029
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xef

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v2, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 6030
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 6031
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-nez v3, :cond_0

    const/4 v1, 0x0

    .line 6032
    .local v1, "icon":Landroid/graphics/Bitmap;
    :goto_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6033
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 6034
    return-object v1

    .line 6031
    .end local v1    # "icon":Landroid/graphics/Bitmap;
    :cond_0
    sget-object v3, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Bitmap;

    move-object v1, v3

    goto :goto_0
.end method

.method public getTaskForActivity(Landroid/os/IBinder;Z)I
    .locals 6
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "onlyRoot"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 3709
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3710
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3711
    .local v1, "reply":Landroid/os/Parcel;
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3712
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 3713
    if-eqz p2, :cond_0

    const/4 v3, 0x1

    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3714
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0x1b

    invoke-interface {v3, v5, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3715
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3716
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3717
    .local v2, "res":I
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3718
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3719
    return v2

    .end local v2    # "res":I
    :cond_0
    move v3, v4

    .line 3713
    goto :goto_0
.end method

.method public getTaskThumbnail(I)Landroid/app/ActivityManager$TaskThumbnail;
    .locals 6
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3441
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3442
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3443
    .local v1, "reply":Landroid/os/Parcel;
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3444
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3445
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x52

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3446
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3447
    const/4 v2, 0x0

    .line 3448
    .local v2, "taskThumbnail":Landroid/app/ActivityManager$TaskThumbnail;
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 3449
    sget-object v3, Landroid/app/ActivityManager$TaskThumbnail;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "taskThumbnail":Landroid/app/ActivityManager$TaskThumbnail;
    check-cast v2, Landroid/app/ActivityManager$TaskThumbnail;

    .line 3451
    .restart local v2    # "taskThumbnail":Landroid/app/ActivityManager$TaskThumbnail;
    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3452
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3453
    return-object v2
.end method

.method public getTasks(II)Ljava/util/List;
    .locals 8
    .param p1, "maxNum"    # I
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<",
            "Landroid/app/ActivityManager$RunningTaskInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3401
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3402
    .local v1, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v4

    .line 3403
    .local v4, "reply":Landroid/os/Parcel;
    const-string v5, "android.app.IActivityManager"

    invoke-virtual {v1, v5}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3404
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3405
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3406
    iget-object v5, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v6, 0x17

    const/4 v7, 0x0

    invoke-interface {v5, v6, v1, v4, v7}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3407
    invoke-virtual {v4}, Landroid/os/Parcel;->readException()V

    .line 3408
    const/4 v3, 0x0

    .line 3409
    .local v3, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 3410
    .local v0, "N":I
    if-ltz v0, :cond_0

    .line 3411
    new-instance v3, Ljava/util/ArrayList;

    .end local v3    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 3412
    .restart local v3    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    :goto_0
    if-lez v0, :cond_0

    .line 3413
    sget-object v5, Landroid/app/ActivityManager$RunningTaskInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, v4}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 3416
    .local v2, "info":Landroid/app/ActivityManager$RunningTaskInfo;
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3417
    add-int/lit8 v0, v0, -0x1

    .line 3418
    goto :goto_0

    .line 3420
    .end local v2    # "info":Landroid/app/ActivityManager$RunningTaskInfo;
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3421
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 3422
    return-object v3
.end method

.method public getTvStackDisplayId()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3661
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3662
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 3663
    .local v2, "reply":Landroid/os/Parcel;
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3664
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x26b0

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v2, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3665
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 3666
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 3667
    .local v1, "displayId":I
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3668
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 3669
    return v1
.end method

.method public getUidForIntentSender(Landroid/content/IIntentSender;)I
    .locals 6
    .param p1, "sender"    # Landroid/content/IIntentSender;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4228
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4229
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4230
    .local v1, "reply":Landroid/os/Parcel;
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4231
    invoke-interface {p1}, Landroid/content/IIntentSender;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 4232
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x5d

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4233
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4234
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 4235
    .local v2, "res":I
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4236
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4237
    return v2
.end method

.method public grantUriPermission(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/net/Uri;II)V
    .locals 5
    .param p1, "caller"    # Landroid/app/IApplicationThread;
    .param p2, "targetPkg"    # Ljava/lang/String;
    .param p3, "uri"    # Landroid/net/Uri;
    .param p4, "mode"    # I
    .param p5, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 4360
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4361
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4362
    .local v1, "reply":Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4363
    invoke-interface {p1}, Landroid/app/IApplicationThread;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 4364
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4365
    invoke-virtual {p3, v0, v4}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    .line 4366
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 4367
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 4368
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x37

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4369
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4370
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4371
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4372
    return-void
.end method

.method public grantUriPermissionFromOwner(Landroid/os/IBinder;ILjava/lang/String;Landroid/net/Uri;III)V
    .locals 5
    .param p1, "owner"    # Landroid/os/IBinder;
    .param p2, "fromUid"    # I
    .param p3, "targetPkg"    # Ljava/lang/String;
    .param p4, "uri"    # Landroid/net/Uri;
    .param p5, "mode"    # I
    .param p6, "sourceUserId"    # I
    .param p7, "targetUserId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 5031
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5032
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5033
    .local v1, "reply":Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5034
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 5035
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5036
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5037
    invoke-virtual {p4, v0, v4}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    .line 5038
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 5039
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeInt(I)V

    .line 5040
    invoke-virtual {v0, p7}, Landroid/os/Parcel;->writeInt(I)V

    .line 5041
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x37

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5042
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5043
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5044
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5045
    return-void
.end method

.method public handleApplicationCrash(Landroid/os/IBinder;Landroid/app/ApplicationErrorReport$CrashInfo;)V
    .locals 5
    .param p1, "app"    # Landroid/os/IBinder;
    .param p2, "crashInfo"    # Landroid/app/ApplicationErrorReport$CrashInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 4601
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4602
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4603
    .local v1, "reply":Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4604
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 4605
    invoke-virtual {p2, v0, v4}, Landroid/app/ApplicationErrorReport$CrashInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 4606
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x2

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4607
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4608
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4609
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4610
    return-void
.end method

.method public handleApplicationStrictModeViolation(Landroid/os/IBinder;ILandroid/os/StrictMode$ViolationInfo;)V
    .locals 5
    .param p1, "app"    # Landroid/os/IBinder;
    .param p2, "violationMask"    # I
    .param p3, "info"    # Landroid/os/StrictMode$ViolationInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 4634
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4635
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4636
    .local v1, "reply":Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4637
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 4638
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4639
    invoke-virtual {p3, v0, v4}, Landroid/os/StrictMode$ViolationInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 4640
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x6e

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4641
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4642
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4643
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4644
    return-void
.end method

.method public handleApplicationWtf(Landroid/os/IBinder;Ljava/lang/String;ZLandroid/app/ApplicationErrorReport$CrashInfo;)Z
    .locals 7
    .param p1, "app"    # Landroid/os/IBinder;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "system"    # Z
    .param p4, "crashInfo"    # Landroid/app/ApplicationErrorReport$CrashInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 4615
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4616
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4617
    .local v1, "reply":Landroid/os/Parcel;
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4618
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 4619
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4620
    if-eqz p3, :cond_0

    move v3, v4

    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 4621
    invoke-virtual {p4, v0, v5}, Landroid/app/ApplicationErrorReport$CrashInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 4622
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v6, 0x66

    invoke-interface {v3, v6, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4623
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4624
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1

    move v2, v4

    .line 4625
    .local v2, "res":Z
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4626
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4627
    return v2

    .end local v2    # "res":Z
    :cond_0
    move v3, v5

    .line 4620
    goto :goto_0

    :cond_1
    move v2, v5

    .line 4624
    goto :goto_1
.end method

.method public handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I
    .locals 6
    .param p1, "callingPid"    # I
    .param p2, "callingUid"    # I
    .param p3, "userId"    # I
    .param p4, "allowAll"    # Z
    .param p5, "requireFull"    # Z
    .param p6, "name"    # Ljava/lang/String;
    .param p7, "callerPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 4241
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4242
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4243
    .local v1, "reply":Landroid/os/Parcel;
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4244
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4245
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4246
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 4247
    if-eqz p4, :cond_0

    move v3, v4

    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 4248
    if-eqz p5, :cond_1

    :goto_1
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 4249
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4250
    invoke-virtual {v0, p7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4251
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x5e

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4252
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4253
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 4254
    .local v2, "res":I
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4255
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4256
    return v2

    .end local v2    # "res":I
    :cond_0
    move v3, v5

    .line 4247
    goto :goto_0

    :cond_1
    move v4, v5

    .line 4248
    goto :goto_1
.end method

.method public hang(Landroid/os/IBinder;Z)V
    .locals 5
    .param p1, "who"    # Landroid/os/IBinder;
    .param p2, "allowRestart"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 5722
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5723
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5724
    .local v1, "reply":Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5725
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 5726
    if-eqz p2, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5727
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xa7

    invoke-interface {v2, v4, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5728
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5729
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5730
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5731
    return-void

    :cond_0
    move v2, v3

    .line 5726
    goto :goto_0
.end method

.method public inputDispatchingTimedOut(IZLjava/lang/String;)J
    .locals 7
    .param p1, "pid"    # I
    .param p2, "aboveSystem"    # Z
    .param p3, "reason"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 5585
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5586
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5587
    .local v1, "reply":Landroid/os/Parcel;
    const-string v4, "android.app.IActivityManager"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5588
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5589
    if-eqz p2, :cond_0

    const/4 v4, 0x1

    :goto_0
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 5590
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5591
    iget-object v4, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v6, 0x9f

    invoke-interface {v4, v6, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5592
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5593
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    int-to-long v2, v4

    .line 5594
    .local v2, "res":J
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5595
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5596
    return-wide v2

    .end local v2    # "res":J
    :cond_0
    move v4, v5

    .line 5589
    goto :goto_0
.end method

.method public isAssistDataAllowedOnCurrentActivity()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 5683
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5684
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5685
    .local v1, "reply":Landroid/os/Parcel;
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5686
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x12c

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5687
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5688
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 5689
    .local v2, "res":Z
    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5690
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5691
    return v2
.end method

.method public isBackgroundVisibleBehind(Landroid/os/IBinder;)Z
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 6072
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6073
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6074
    .local v1, "reply":Landroid/os/Parcel;
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6075
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 6076
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xe3

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 6077
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6078
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-lez v3, :cond_0

    const/4 v2, 0x1

    .line 6079
    .local v2, "visible":Z
    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6080
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6081
    return v2
.end method

.method public isImmersive(Landroid/os/IBinder;)Z
    .locals 6
    .param p1, "token"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 4948
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4949
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4950
    .local v1, "reply":Landroid/os/Parcel;
    const-string v4, "android.app.IActivityManager"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4951
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 4952
    iget-object v4, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0x6f

    invoke-interface {v4, v5, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4953
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4954
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-ne v4, v2, :cond_0

    .line 4955
    .local v2, "res":Z
    :goto_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4956
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4957
    return v2

    .end local v2    # "res":Z
    :cond_0
    move v2, v3

    .line 4954
    goto :goto_0
.end method

.method public isInHomeStack(I)Z
    .locals 5
    .param p1, "taskId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 3635
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3636
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 3637
    .local v2, "reply":Landroid/os/Parcel;
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3638
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3639
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xd5

    invoke-interface {v3, v4, v0, v2, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3640
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 3641
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-lez v3, :cond_0

    const/4 v1, 0x1

    .line 3642
    .local v1, "isInHomeStack":Z
    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3643
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 3644
    return v1
.end method

.method public isInLockTaskMode()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 5945
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5946
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 5947
    .local v2, "reply":Landroid/os/Parcel;
    const-string v4, "android.app.IActivityManager"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5948
    iget-object v4, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0xd9

    invoke-interface {v4, v5, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5949
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 5950
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-ne v4, v1, :cond_0

    .line 5951
    .local v1, "isInLockTaskMode":Z
    :goto_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5952
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 5953
    return v1

    .end local v1    # "isInLockTaskMode":Z
    :cond_0
    move v1, v3

    .line 5950
    goto :goto_0
.end method

.method public isInTvStack(I)Z
    .locals 5
    .param p1, "taskId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 3648
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3649
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 3650
    .local v2, "reply":Landroid/os/Parcel;
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3651
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3652
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x26ae

    invoke-interface {v3, v4, v0, v2, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3653
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 3654
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-lez v3, :cond_0

    const/4 v1, 0x1

    .line 3655
    .local v1, "isInTvStack":Z
    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3656
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 3657
    return v1
.end method

.method public isIntentSenderAnActivity(Landroid/content/IIntentSender;)Z
    .locals 5
    .param p1, "sender"    # Landroid/content/IIntentSender;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 5387
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5388
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5389
    .local v1, "reply":Landroid/os/Parcel;
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5390
    invoke-interface {p1}, Landroid/content/IIntentSender;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 5391
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x98

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5392
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5393
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 5394
    .local v2, "res":Z
    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5395
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5396
    return v2
.end method

.method public isIntentSenderTargetedToPackage(Landroid/content/IIntentSender;)Z
    .locals 5
    .param p1, "sender"    # Landroid/content/IIntentSender;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 5374
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5375
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5376
    .local v1, "reply":Landroid/os/Parcel;
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5377
    invoke-interface {p1}, Landroid/content/IIntentSender;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 5378
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x87

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5379
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5380
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 5381
    .local v2, "res":Z
    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5382
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5383
    return v2
.end method

.method public isRootVoiceInteraction(Landroid/os/IBinder;)Z
    .locals 6
    .param p1, "token"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 6246
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6247
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6248
    .local v1, "reply":Landroid/os/Parcel;
    const-string v4, "android.app.IActivityManager"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6249
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 6250
    iget-object v4, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0x12e

    invoke-interface {v4, v5, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 6251
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6252
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 6253
    .local v2, "res":I
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6254
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6255
    if-eqz v2, :cond_0

    const/4 v3, 0x1

    :cond_0
    return v3
.end method

.method public isTopActivityImmersive()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 4975
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4976
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4977
    .local v1, "reply":Landroid/os/Parcel;
    const-string v4, "android.app.IActivityManager"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4978
    iget-object v4, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0x71

    invoke-interface {v4, v5, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4979
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4980
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-ne v4, v2, :cond_0

    .line 4981
    .local v2, "res":Z
    :goto_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4982
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4983
    return v2

    .end local v2    # "res":Z
    :cond_0
    move v2, v3

    .line 4980
    goto :goto_0
.end method

.method public isTopOfTask(Landroid/os/IBinder;)Z
    .locals 6
    .param p1, "token"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 4961
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4962
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4963
    .local v1, "reply":Landroid/os/Parcel;
    const-string v4, "android.app.IActivityManager"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4964
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 4965
    iget-object v4, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0xe1

    invoke-interface {v4, v5, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4966
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4967
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-ne v4, v2, :cond_0

    .line 4968
    .local v2, "res":Z
    :goto_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4969
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4970
    return v2

    .end local v2    # "res":Z
    :cond_0
    move v2, v3

    .line 4967
    goto :goto_0
.end method

.method public isUserAMonkey()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 4853
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4854
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4855
    .local v1, "reply":Landroid/os/Parcel;
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4856
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x68

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4857
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4858
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 4859
    .local v2, "res":Z
    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4860
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4861
    return v2
.end method

.method public isUserRunning(IZ)Z
    .locals 7
    .param p1, "userid"    # I
    .param p2, "orStopping"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 5275
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5276
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5277
    .local v1, "reply":Landroid/os/Parcel;
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5278
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5279
    if-eqz p2, :cond_0

    move v3, v4

    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 5280
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v6, 0x7a

    invoke-interface {v3, v6, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5281
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5282
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1

    move v2, v4

    .line 5283
    .local v2, "result":Z
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5284
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5285
    return v2

    .end local v2    # "result":Z
    :cond_0
    move v3, v5

    .line 5279
    goto :goto_0

    :cond_1
    move v2, v5

    .line 5282
    goto :goto_1
.end method

.method public keyguardGoingAway(ZZ)V
    .locals 5
    .param p1, "disableWindowAnimations"    # Z
    .param p2, "keyguardGoingToNotificationShade"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 5477
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5478
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5479
    .local v1, "reply":Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5480
    if-eqz p1, :cond_0

    move v2, v3

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5481
    if-eqz p2, :cond_1

    :goto_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 5482
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x129

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5483
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5484
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5485
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5486
    return-void

    :cond_0
    move v2, v4

    .line 5480
    goto :goto_0

    :cond_1
    move v3, v4

    .line 5481
    goto :goto_1
.end method

.method public keyguardWaitingForActivityDrawn()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 5466
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5467
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5468
    .local v1, "reply":Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5469
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xe8

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5470
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5471
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5472
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5473
    return-void
.end method

.method public killAllBackgroundProcesses()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4670
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4671
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4672
    .local v1, "reply":Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4673
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x8c

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4674
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4675
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4676
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4677
    return-void
.end method

.method public killApplicationProcess(Ljava/lang/String;I)V
    .locals 5
    .param p1, "processName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4826
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4827
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4828
    .local v1, "reply":Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4829
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4830
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4831
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x63

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4832
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4833
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4834
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4835
    return-void
.end method

.method public killApplicationWithAppId(Ljava/lang/String;ILjava/lang/String;)V
    .locals 5
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "appid"    # I
    .param p3, "reason"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4788
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4789
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4790
    .local v1, "reply":Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4791
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4792
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4793
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4794
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x60

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4795
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4796
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4797
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4798
    return-void
.end method

.method public killBackgroundProcesses(Ljava/lang/String;I)V
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4658
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4659
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4660
    .local v1, "reply":Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4661
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4662
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4663
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x67

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4664
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4665
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4666
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4667
    return-void
.end method

.method public killPids([ILjava/lang/String;Z)Z
    .locals 7
    .param p1, "pids"    # [I
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "secure"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 4568
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4569
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4570
    .local v1, "reply":Landroid/os/Parcel;
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4571
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 4572
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4573
    if-eqz p3, :cond_0

    move v3, v4

    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 4574
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v6, 0x50

    invoke-interface {v3, v6, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4575
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4576
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1

    move v2, v4

    .line 4577
    .local v2, "res":Z
    :goto_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4578
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4579
    return v2

    .end local v2    # "res":Z
    :cond_0
    move v3, v5

    .line 4573
    goto :goto_0

    :cond_1
    move v2, v5

    .line 4576
    goto :goto_1
.end method

.method public killProcessesBelowForeground(Ljava/lang/String;)Z
    .locals 5
    .param p1, "reason"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 4583
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4584
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4585
    .local v1, "reply":Landroid/os/Parcel;
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4586
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4587
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x90

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4588
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 4589
    .local v2, "res":Z
    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4590
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4591
    return v2
.end method

.method public killUid(IILjava/lang/String;)V
    .locals 5
    .param p1, "appId"    # I
    .param p2, "userId"    # I
    .param p3, "reason"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 5709
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5710
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5711
    .local v1, "reply":Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5712
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5713
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5714
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5715
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xa5

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5716
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5717
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5718
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5719
    return-void
.end method

.method public launchAssistIntent(Landroid/content/Intent;ILjava/lang/String;ILandroid/os/Bundle;)Z
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "requestType"    # I
    .param p3, "hint"    # Ljava/lang/String;
    .param p4, "userHandle"    # I
    .param p5, "args"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 5666
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5667
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5668
    .local v1, "reply":Landroid/os/Parcel;
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5669
    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 5670
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5671
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5672
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 5673
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 5674
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xf0

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5675
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5676
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 5677
    .local v2, "res":Z
    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5678
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5679
    return v2
.end method

.method public moveActivityTaskToBack(Landroid/os/IBinder;Z)Z
    .locals 7
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "nonRoot"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 3539
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3540
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3541
    .local v1, "reply":Landroid/os/Parcel;
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3542
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 3543
    if-eqz p2, :cond_0

    move v3, v4

    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3544
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v6, 0x4b

    invoke-interface {v3, v6, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3545
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3546
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1

    move v2, v4

    .line 3547
    .local v2, "res":Z
    :goto_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3548
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3549
    return v2

    .end local v2    # "res":Z
    :cond_0
    move v3, v5

    .line 3543
    goto :goto_0

    :cond_1
    move v2, v5

    .line 3546
    goto :goto_1
.end method

.method public moveTaskBackwards(I)V
    .locals 5
    .param p1, "task"    # I
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
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3555
    .local v1, "reply":Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3556
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3557
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1a

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3558
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3559
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3560
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3561
    return-void
.end method

.method public moveTaskToFront(IILandroid/os/Bundle;)V
    .locals 5
    .param p1, "task"    # I
    .param p2, "flags"    # I
    .param p3, "options"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 3521
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3522
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3523
    .local v1, "reply":Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3524
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3525
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3526
    if-eqz p3, :cond_0

    .line 3527
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3528
    invoke-virtual {p3, v0, v4}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 3532
    :goto_0
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x18

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3533
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3534
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3535
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3536
    return-void

    .line 3530
    :cond_0
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0
.end method

.method public moveTaskToStack(IIZ)V
    .locals 5
    .param p1, "taskId"    # I
    .param p2, "stackId"    # I
    .param p3, "toTop"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 3578
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3579
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3580
    .local v1, "reply":Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3581
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3582
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3583
    if-eqz p3, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3584
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xa9

    invoke-interface {v2, v4, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3585
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3586
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3587
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3588
    return-void

    :cond_0
    move v2, v3

    .line 3583
    goto :goto_0
.end method

.method public navigateUpTo(Landroid/os/IBinder;Landroid/content/Intent;ILandroid/content/Intent;)Z
    .locals 6
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "target"    # Landroid/content/Intent;
    .param p3, "resultCode"    # I
    .param p4, "resultData"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 5505
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5506
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5507
    .local v1, "reply":Landroid/os/Parcel;
    const-string v4, "android.app.IActivityManager"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5508
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 5509
    invoke-virtual {p2, v0, v3}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 5510
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 5511
    if-eqz p4, :cond_0

    .line 5512
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5513
    invoke-virtual {p4, v0, v3}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 5517
    :goto_0
    iget-object v4, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0x93

    invoke-interface {v4, v5, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5518
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5519
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1

    .line 5520
    .local v2, "result":Z
    :goto_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5521
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5522
    return v2

    .line 5515
    .end local v2    # "result":Z
    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :cond_1
    move v2, v3

    .line 5519
    goto :goto_1
.end method

.method public newUriPermissionOwner(Ljava/lang/String;)Landroid/os/IBinder;
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 5017
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5018
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5019
    .local v1, "reply":Landroid/os/Parcel;
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5020
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5021
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x74

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5022
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5023
    invoke-virtual {v1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 5024
    .local v2, "res":Landroid/os/IBinder;
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5025
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5026
    return-object v2
.end method

.method public noteAlarmFinish(Landroid/content/IIntentSender;ILjava/lang/String;)V
    .locals 5
    .param p1, "sender"    # Landroid/content/IIntentSender;
    .param p2, "sourceUid"    # I
    .param p3, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4559
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4560
    .local v0, "data":Landroid/os/Parcel;
    const-string v1, "android.app.IActivityManager"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4561
    invoke-interface {p1}, Landroid/content/IIntentSender;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 4562
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4563
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4564
    iget-object v1, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x125

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4565
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4566
    return-void
.end method

.method public noteAlarmStart(Landroid/content/IIntentSender;ILjava/lang/String;)V
    .locals 5
    .param p1, "sender"    # Landroid/content/IIntentSender;
    .param p2, "sourceUid"    # I
    .param p3, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4549
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4550
    .local v0, "data":Landroid/os/Parcel;
    const-string v1, "android.app.IActivityManager"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4551
    invoke-interface {p1}, Landroid/content/IIntentSender;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 4552
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4553
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4554
    iget-object v1, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x124

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4555
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4556
    return-void
.end method

.method public noteWakeupAlarm(Landroid/content/IIntentSender;ILjava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "sender"    # Landroid/content/IIntentSender;
    .param p2, "sourceUid"    # I
    .param p3, "sourcePkg"    # Ljava/lang/String;
    .param p4, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4538
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4539
    .local v0, "data":Landroid/os/Parcel;
    const-string v1, "android.app.IActivityManager"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4540
    invoke-interface {p1}, Landroid/content/IIntentSender;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 4541
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4542
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4543
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4544
    iget-object v1, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x44

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4545
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4546
    return-void
.end method

.method public notifyActivityDrawn(Landroid/os/IBinder;)V
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 5745
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5746
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5747
    .local v1, "reply":Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5748
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 5749
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xb0

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5750
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5751
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5752
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5753
    return-void
.end method

.method public notifyCleartextNetwork(I[B)V
    .locals 5
    .param p1, "uid"    # I
    .param p2, "firstPacket"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 6133
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6134
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6135
    .local v1, "reply":Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6136
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 6137
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 6138
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x119

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 6139
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6140
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6141
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6142
    return-void
.end method

.method public notifyEnterAnimationComplete(Landroid/os/IBinder;)V
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 6110
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6111
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6112
    .local v1, "reply":Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6113
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 6114
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xe7

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 6115
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6116
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6117
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6118
    return-void
.end method

.method public notifyLaunchTaskBehindComplete(Landroid/os/IBinder;)V
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 6098
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6099
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6100
    .local v1, "reply":Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6101
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 6102
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xe5

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 6103
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6104
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6105
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6106
    return-void
.end method

.method public notifyPhoneEvent(Ljava/lang/String;Ljava/lang/String;ILcom/lenovo/datamining/avatar/api/LocalParamMap;)V
    .locals 5
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "label"    # Ljava/lang/String;
    .param p3, "value"    # I
    .param p4, "localParams"    # Lcom/lenovo/datamining/avatar/api/LocalParamMap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 6276
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6277
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6278
    .local v1, "reply":Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6279
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6280
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6281
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 6282
    invoke-virtual {v0, p4, v4}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 6283
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x138b

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 6284
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6285
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6286
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6287
    return-void
.end method

.method public openContentUri(Landroid/net/Uri;)Landroid/os/ParcelFileDescriptor;
    .locals 6
    .param p1, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4469
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4470
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 4471
    .local v2, "reply":Landroid/os/Parcel;
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4472
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x5

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v2, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4473
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 4474
    const/4 v1, 0x0

    .line 4475
    .local v1, "pfd":Landroid/os/ParcelFileDescriptor;
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 4476
    sget-object v3, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "pfd":Landroid/os/ParcelFileDescriptor;
    check-cast v1, Landroid/os/ParcelFileDescriptor;

    .line 4478
    .restart local v1    # "pfd":Landroid/os/ParcelFileDescriptor;
    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4479
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 4480
    return-object v1
.end method

.method public overridePendingTransition(Landroid/os/IBinder;Ljava/lang/String;II)V
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "enterAnim"    # I
    .param p4, "exitAnim"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4839
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4840
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4841
    .local v1, "reply":Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4842
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 4843
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4844
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 4845
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 4846
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x65

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4847
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4848
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4849
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4850
    return-void
.end method

.method public peekService(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)Landroid/os/IBinder;
    .locals 6
    .param p1, "service"    # Landroid/content/Intent;
    .param p2, "resolvedType"    # Ljava/lang/String;
    .param p3, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 4001
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4002
    .local v1, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 4003
    .local v2, "reply":Landroid/os/Parcel;
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4004
    invoke-virtual {p1, v1, v5}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 4005
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4006
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4007
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x55

    invoke-interface {v3, v4, v1, v2, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4008
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 4009
    invoke-virtual {v2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 4010
    .local v0, "binder":Landroid/os/IBinder;
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 4011
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4012
    return-object v0
.end method

.method public performIdleMaintenance()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 5766
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5767
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5768
    .local v1, "reply":Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5769
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xb3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5770
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5771
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5772
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5773
    return-void
.end method

.method public profileControl(Ljava/lang/String;IZLandroid/app/ProfilerInfo;I)Z
    .locals 7
    .param p1, "process"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "start"    # Z
    .param p4, "profilerInfo"    # Landroid/app/ProfilerInfo;
    .param p5, "profileType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 4720
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4721
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4722
    .local v1, "reply":Landroid/os/Parcel;
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4723
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4724
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4725
    if-eqz p3, :cond_0

    move v3, v4

    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 4726
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 4727
    if-eqz p4, :cond_1

    .line 4728
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 4729
    invoke-virtual {p4, v0, v4}, Landroid/app/ProfilerInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 4733
    :goto_1
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v6, 0x56

    invoke-interface {v3, v6, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4734
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4735
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_2

    move v2, v4

    .line 4736
    .local v2, "res":Z
    :goto_2
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4737
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4738
    return v2

    .end local v2    # "res":Z
    :cond_0
    move v3, v5

    .line 4725
    goto :goto_0

    .line 4731
    :cond_1
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    :cond_2
    move v2, v5

    .line 4735
    goto :goto_2
.end method

.method public publishContentProviders(Landroid/app/IApplicationThread;Ljava/util/List;)V
    .locals 5
    .param p1, "caller"    # Landroid/app/IApplicationThread;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/IApplicationThread;",
            "Ljava/util/List",
            "<",
            "Landroid/app/IActivityManager$ContentProviderHolder;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3763
    .local p2, "providers":Ljava/util/List;, "Ljava/util/List<Landroid/app/IActivityManager$ContentProviderHolder;>;"
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3764
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3765
    .local v1, "reply":Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3766
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/app/IApplicationThread;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 3767
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 3768
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1e

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3769
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3770
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3771
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3772
    return-void

    .line 3766
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public publishService(Landroid/os/IBinder;Landroid/content/Intent;Landroid/os/IBinder;)V
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "service"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 3958
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3959
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3960
    .local v1, "reply":Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3961
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 3962
    invoke-virtual {p2, v0, v4}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 3963
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 3964
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x26

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3965
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3966
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3967
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3968
    return-void
.end method

.method public refContentProvider(Landroid/os/IBinder;II)Z
    .locals 5
    .param p1, "connection"    # Landroid/os/IBinder;
    .param p2, "stable"    # I
    .param p3, "unstable"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 3775
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3776
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3777
    .local v1, "reply":Landroid/os/Parcel;
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3778
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 3779
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3780
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3781
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x1f

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3782
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3783
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 3784
    .local v2, "res":Z
    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3785
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3786
    return v2
.end method

.method public registerAppExceptionListener(Lcom/lenovo/datamining/avatar/system/IAppExceptionListener;)V
    .locals 5
    .param p1, "listener"    # Lcom/lenovo/datamining/avatar/system/IAppExceptionListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 6296
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6297
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6298
    .local v1, "reply":Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6299
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/lenovo/datamining/avatar/system/IAppExceptionListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 6300
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xfa2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 6301
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6302
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6303
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6304
    return-void

    .line 6299
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public registerProcessObserver(Landroid/app/IProcessObserver;)V
    .locals 5
    .param p1, "observer"    # Landroid/app/IProcessObserver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 5330
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5331
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5332
    .local v1, "reply":Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5333
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/app/IProcessObserver;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 5334
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x85

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5335
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5336
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5337
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5338
    return-void

    .line 5333
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public registerReceiver(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/IIntentReceiver;Landroid/content/IntentFilter;Ljava/lang/String;I)Landroid/content/Intent;
    .locals 7
    .param p1, "caller"    # Landroid/app/IApplicationThread;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "receiver"    # Landroid/content/IIntentReceiver;
    .param p4, "filter"    # Landroid/content/IntentFilter;
    .param p5, "perm"    # Ljava/lang/String;
    .param p6, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 3145
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3146
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 3147
    .local v3, "reply":Landroid/os/Parcel;
    const-string v4, "android.app.IActivityManager"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3148
    if-eqz p1, :cond_2

    invoke-interface {p1}, Landroid/app/IApplicationThread;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    :goto_0
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 3149
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3150
    if-eqz p3, :cond_0

    invoke-interface {p3}, Landroid/content/IIntentReceiver;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    :cond_0
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 3151
    invoke-virtual {p4, v0, v6}, Landroid/content/IntentFilter;->writeToParcel(Landroid/os/Parcel;I)V

    .line 3152
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3153
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeInt(I)V

    .line 3154
    iget-object v4, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0xc

    invoke-interface {v4, v5, v0, v3, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3155
    invoke-virtual {v3}, Landroid/os/Parcel;->readException()V

    .line 3156
    const/4 v2, 0x0

    .line 3157
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 3158
    .local v1, "haveIntent":I
    if-eqz v1, :cond_1

    .line 3159
    sget-object v4, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, v3}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "intent":Landroid/content/Intent;
    check-cast v2, Landroid/content/Intent;

    .line 3161
    .restart local v2    # "intent":Landroid/content/Intent;
    :cond_1
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 3162
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3163
    return-object v2

    .end local v1    # "haveIntent":I
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_2
    move-object v4, v5

    .line 3148
    goto :goto_0
.end method

.method public registerSystemCollectorListener(Lcom/lenovo/datamining/avatar/system/ISystemCollectorListener;)V
    .locals 5
    .param p1, "listener"    # Lcom/lenovo/datamining/avatar/system/ISystemCollectorListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 6263
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6264
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6265
    .local v1, "reply":Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6266
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/lenovo/datamining/avatar/system/ISystemCollectorListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 6267
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x138a

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 6268
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6269
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6270
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6271
    return-void

    .line 6266
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public registerTaskStackListener(Landroid/app/ITaskStackListener;)V
    .locals 5
    .param p1, "listener"    # Landroid/app/ITaskStackListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3698
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3699
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3700
    .local v1, "reply":Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3701
    invoke-interface {p1}, Landroid/app/ITaskStackListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 3702
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xf3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3703
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3704
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3705
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3706
    return-void
.end method

.method public registerUidObserver(Landroid/app/IUidObserver;)V
    .locals 5
    .param p1, "observer"    # Landroid/app/IUidObserver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 5352
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5353
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5354
    .local v1, "reply":Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5355
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/app/IUidObserver;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 5356
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x12a

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5357
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5358
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5359
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5360
    return-void

    .line 5355
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public registerUserSwitchObserver(Landroid/app/IUserSwitchObserver;)V
    .locals 5
    .param p1, "observer"    # Landroid/app/IUserSwitchObserver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 5552
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5553
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5554
    .local v1, "reply":Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5555
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/app/IUserSwitchObserver;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 5556
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x9b

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5557
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5558
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5559
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5560
    return-void

    .line 5555
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public releaseActivityInstance(Landroid/os/IBinder;)Z
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 3108
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3109
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3110
    .local v1, "reply":Landroid/os/Parcel;
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3111
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 3112
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xec

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3113
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3114
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 3115
    .local v2, "res":Z
    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3116
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3117
    return v2
.end method

.method public releasePersistableUriPermission(Landroid/net/Uri;II)V
    .locals 5
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "mode"    # I
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 4406
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4407
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4408
    .local v1, "reply":Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4409
    invoke-virtual {p1, v0, v4}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    .line 4410
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4411
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 4412
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xb5

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4413
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4414
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4415
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4416
    return-void
.end method

.method public releaseSomeActivities(Landroid/app/IApplicationThread;)V
    .locals 5
    .param p1, "app"    # Landroid/app/IApplicationThread;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3120
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3121
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3122
    .local v1, "reply":Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3123
    invoke-interface {p1}, Landroid/app/IApplicationThread;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 3124
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xed

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3125
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3126
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3127
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3128
    return-void
.end method

.method public removeContentProvider(Landroid/os/IBinder;Z)V
    .locals 5
    .param p1, "connection"    # Landroid/os/IBinder;
    .param p2, "stable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 3813
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3814
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3815
    .local v1, "reply":Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3816
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 3817
    if-eqz p2, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3818
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x45

    invoke-interface {v2, v4, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3819
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3820
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3821
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3822
    return-void

    :cond_0
    move v2, v3

    .line 3817
    goto :goto_0
.end method

.method public removeContentProviderExternal(Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "token"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3825
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3826
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3827
    .local v1, "reply":Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3828
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3829
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 3830
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x8e

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3831
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3832
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3833
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3834
    return-void
.end method

.method public removeTask(I)Z
    .locals 5
    .param p1, "taskId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 5301
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5302
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5303
    .local v1, "reply":Landroid/os/Parcel;
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5304
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5305
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x84

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5306
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5307
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 5308
    .local v2, "result":Z
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5309
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5310
    return v2
.end method

.method public removeTask(II)Z
    .locals 5
    .param p1, "taskId"    # I
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 5315
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5316
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5317
    .local v1, "reply":Landroid/os/Parcel;
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5318
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5319
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5320
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x1772

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5321
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5322
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 5323
    .local v2, "result":Z
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5324
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5325
    return v2
.end method

.method public reportActivityFullyDrawn(Landroid/os/IBinder;)V
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 5734
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5735
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5736
    .local v1, "reply":Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5737
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 5738
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xb1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5739
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5740
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5741
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5742
    return-void
.end method

.method public reportAssistContextExtras(Landroid/os/IBinder;Landroid/os/Bundle;Landroid/app/assist/AssistStructure;Landroid/app/assist/AssistContent;Landroid/net/Uri;)V
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "extras"    # Landroid/os/Bundle;
    .param p3, "structure"    # Landroid/app/assist/AssistStructure;
    .param p4, "content"    # Landroid/app/assist/AssistContent;
    .param p5, "referrer"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 5645
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5646
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5647
    .local v1, "reply":Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5648
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 5649
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 5650
    invoke-virtual {p3, v0, v4}, Landroid/app/assist/AssistStructure;->writeToParcel(Landroid/os/Parcel;I)V

    .line 5651
    invoke-virtual {p4, v0, v4}, Landroid/app/assist/AssistContent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 5652
    if-eqz p5, :cond_0

    .line 5653
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5654
    invoke-virtual {p5, v0, v4}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    .line 5658
    :goto_0
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xa3

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5659
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5660
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5661
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5662
    return-void

    .line 5656
    :cond_0
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0
.end method

.method public requestAssistContextExtras(ILcom/android/internal/os/IResultReceiver;Landroid/os/IBinder;)Z
    .locals 5
    .param p1, "requestType"    # I
    .param p2, "receiver"    # Lcom/android/internal/os/IResultReceiver;
    .param p3, "activityToken"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 5629
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5630
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5631
    .local v1, "reply":Landroid/os/Parcel;
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5632
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5633
    invoke-interface {p2}, Lcom/android/internal/os/IResultReceiver;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 5634
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 5635
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x11d

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5636
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5637
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 5638
    .local v2, "res":Z
    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5639
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5640
    return v2
.end method

.method public requestBugReport()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 5574
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5575
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5576
    .local v1, "reply":Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5577
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x9e

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5578
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5579
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5580
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5581
    return-void
.end method

.method public requestVisibleBehind(Landroid/os/IBinder;Z)Z
    .locals 7
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "visible"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 6057
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6058
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6059
    .local v1, "reply":Landroid/os/Parcel;
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6060
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 6061
    if-eqz p2, :cond_0

    move v3, v4

    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 6062
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v6, 0xe2

    invoke-interface {v3, v6, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 6063
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6064
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-lez v3, :cond_1

    move v2, v4

    .line 6065
    .local v2, "success":Z
    :goto_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6066
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6067
    return v2

    .end local v2    # "success":Z
    :cond_0
    move v3, v5

    .line 6061
    goto :goto_0

    :cond_1
    move v2, v5

    .line 6064
    goto :goto_1
.end method

.method public resizeStack(ILandroid/graphics/Rect;)V
    .locals 5
    .param p1, "stackBoxId"    # I
    .param p2, "r"    # Landroid/graphics/Rect;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 3592
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3593
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3594
    .local v1, "reply":Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3595
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3596
    invoke-virtual {p2, v0, v4}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    .line 3597
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xaa

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3598
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3599
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3600
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3601
    return-void
.end method

.method public resizeTask(ILandroid/graphics/Rect;)V
    .locals 5
    .param p1, "taskId"    # I
    .param p2, "r"    # Landroid/graphics/Rect;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 6012
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6013
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6014
    .local v1, "reply":Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6015
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 6016
    invoke-virtual {p2, v0, v4}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    .line 6017
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x11e

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 6018
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6019
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6020
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6021
    return-void
.end method

.method public restart()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 5756
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5757
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5758
    .local v1, "reply":Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5759
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xb2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5760
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5761
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5762
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5763
    return-void
.end method

.method public resumeAppSwitches()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4766
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4767
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4768
    .local v1, "reply":Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4769
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x59

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4770
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4771
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4772
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4773
    return-void
.end method

.method public revokeUriPermission(Landroid/app/IApplicationThread;Landroid/net/Uri;II)V
    .locals 5
    .param p1, "caller"    # Landroid/app/IApplicationThread;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "mode"    # I
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 4375
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4376
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4377
    .local v1, "reply":Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4378
    invoke-interface {p1}, Landroid/app/IApplicationThread;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 4379
    invoke-virtual {p2, v0, v4}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    .line 4380
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 4381
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 4382
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x38

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4383
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4384
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4385
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4386
    return-void
.end method

.method public revokeUriPermissionFromOwner(Landroid/os/IBinder;Landroid/net/Uri;II)V
    .locals 5
    .param p1, "owner"    # Landroid/os/IBinder;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "mode"    # I
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 5049
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5050
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5051
    .local v1, "reply":Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5052
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 5053
    if-eqz p2, :cond_0

    .line 5054
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5055
    invoke-virtual {p2, v0, v4}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    .line 5059
    :goto_0
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 5060
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 5061
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x38

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5062
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5063
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5064
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5065
    return-void

    .line 5057
    :cond_0
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0
.end method

.method public serviceDoneExecuting(Landroid/os/IBinder;III)V
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "type"    # I
    .param p3, "startId"    # I
    .param p4, "res"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3986
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3987
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3988
    .local v1, "reply":Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3989
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 3990
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3991
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3992
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 3993
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x3d

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3994
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3995
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3996
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3997
    return-void
.end method

.method public setActivityController(Landroid/app/IActivityController;)V
    .locals 5
    .param p1, "watcher"    # Landroid/app/IActivityController;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4521
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4522
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4523
    .local v1, "reply":Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4524
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/app/IActivityController;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 4525
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x39

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4526
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4527
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4528
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4529
    return-void

    .line 4524
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public setAlwaysFinish(Z)V
    .locals 5
    .param p1, "enabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 4510
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4511
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4512
    .local v1, "reply":Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4513
    if-eqz p1, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4514
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x2b

    invoke-interface {v2, v4, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4515
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4516
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4517
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4518
    return-void

    :cond_0
    move v2, v3

    .line 4513
    goto :goto_0
.end method

.method public setDebugApp(Ljava/lang/String;ZZ)V
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "waitForDebugger"    # Z
    .param p3, "persistent"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 4497
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4498
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4499
    .local v1, "reply":Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4500
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4501
    if-eqz p2, :cond_0

    move v2, v3

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4502
    if-eqz p3, :cond_1

    :goto_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 4503
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x2a

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4504
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4505
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4506
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4507
    return-void

    :cond_0
    move v2, v4

    .line 4501
    goto :goto_0

    :cond_1
    move v3, v4

    .line 4502
    goto :goto_1
.end method

.method public setDumpHeapDebugLimit(Ljava/lang/String;IJLjava/lang/String;)V
    .locals 5
    .param p1, "processName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "maxMemSize"    # J
    .param p5, "reportPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 6147
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6148
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6149
    .local v1, "reply":Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6150
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6151
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6152
    invoke-virtual {v0, p3, p4}, Landroid/os/Parcel;->writeLong(J)V

    .line 6153
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6154
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x120

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 6155
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6156
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6157
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6158
    return-void
.end method

.method public setFocusedStack(I)V
    .locals 5
    .param p1, "stackId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3674
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3675
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3676
    .local v1, "reply":Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3677
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3678
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xac

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3679
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3680
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3681
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3682
    return-void
.end method

.method public setFrontActivityScreenCompatMode(I)V
    .locals 5
    .param p1, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 5147
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5148
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5149
    .local v1, "reply":Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5150
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5151
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x7d

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5152
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5153
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5154
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5155
    return-void
.end method

.method public setGlobalTransform(Landroid/view/animation/Transformation;)V
    .locals 1
    .param p1, "transf"    # Landroid/view/animation/Transformation;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 5778
    invoke-static {p1}, Landroid/view/animation/LenovoTransformation;->switchToLenovoTransformation(Landroid/view/animation/Transformation;)Landroid/view/animation/LenovoTransformation;

    move-result-object v0

    .line 5780
    .local v0, "mLenovoTransformation":Landroid/view/animation/LenovoTransformation;
    invoke-virtual {p0, v0}, Landroid/app/ActivityManagerProxy;->setLenovoGlobalTransform(Landroid/view/animation/LenovoTransformation;)V

    .line 5781
    return-void
.end method

.method public setImmersive(Landroid/os/IBinder;Z)V
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "immersive"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 4935
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4936
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4937
    .local v1, "reply":Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4938
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 4939
    if-eqz p2, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4940
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x70

    invoke-interface {v2, v4, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4941
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4942
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4943
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4944
    return-void

    :cond_0
    move v2, v3

    .line 4939
    goto :goto_0
.end method

.method public setLenovoGlobalTransform(Landroid/view/animation/LenovoTransformation;)V
    .locals 5
    .param p1, "transf"    # Landroid/view/animation/LenovoTransformation;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 5784
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5785
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5786
    .local v1, "reply":Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5787
    if-eqz p1, :cond_0

    .line 5788
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5789
    invoke-virtual {p1, v0, v4}, Landroid/view/animation/LenovoTransformation;->writeToParcel(Landroid/os/Parcel;I)V

    .line 5793
    :goto_0
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x7d2

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5794
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5795
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5796
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5797
    return-void

    .line 5791
    :cond_0
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0
.end method

.method public setLockScreenShown(Z)V
    .locals 5
    .param p1, "shown"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 4484
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4485
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4486
    .local v1, "reply":Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4487
    if-eqz p1, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4488
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x94

    invoke-interface {v2, v4, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4489
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4490
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4491
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4492
    return-void

    :cond_0
    move v2, v3

    .line 4487
    goto :goto_0
.end method

.method public setPackageAskScreenCompat(Ljava/lang/String;Z)V
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "ask"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 5198
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5199
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5200
    .local v1, "reply":Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5201
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5202
    if-eqz p2, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5203
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x81

    invoke-interface {v2, v4, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5204
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5205
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5206
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5207
    return-void

    :cond_0
    move v2, v3

    .line 5202
    goto :goto_0
.end method

.method public setPackageScreenCompatMode(Ljava/lang/String;I)V
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 5172
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5173
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5174
    .local v1, "reply":Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5175
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5176
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5177
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x7f

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5178
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5179
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5180
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5181
    return-void
.end method

.method public setPersistentForce(Ljava/lang/String;Z)V
    .locals 5
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "set"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 5602
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5603
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5604
    .local v1, "reply":Landroid/os/Parcel;
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5605
    if-eqz p2, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5606
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x3e9

    invoke-interface {v2, v4, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5607
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5608
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5609
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5610
    return-void

    :cond_0
    move v2, v3

    .line 5605
    goto :goto_0
.end method

.method public setProcessForeground(Landroid/os/IBinder;IZ)V
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "pid"    # I
    .param p3, "isForeground"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 4283
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4284
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4285
    .local v1, "reply":Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4286
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 4287
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4288
    if-eqz p3, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4289
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x49

    invoke-interface {v2, v4, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4290
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4291
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4292
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4293
    return-void

    :cond_0
    move v2, v3

    .line 4288
    goto :goto_0
.end method

.method public setProcessLimit(I)V
    .locals 5
    .param p1, "max"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4260
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4261
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4262
    .local v1, "reply":Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4263
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4264
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x33

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4265
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4266
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4267
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4268
    return-void
.end method

.method public setProcessMemoryTrimLevel(Ljava/lang/String;II)Z
    .locals 6
    .param p1, "process"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "level"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 6230
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6231
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6232
    .local v1, "reply":Landroid/os/Parcel;
    const-string v4, "android.app.IActivityManager"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6233
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6234
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6235
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 6236
    iget-object v4, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0xbb

    invoke-interface {v4, v5, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 6237
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6238
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 6239
    .local v2, "res":I
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6240
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6241
    if-eqz v2, :cond_0

    const/4 v3, 0x1

    :cond_0
    return v3
.end method

.method public setRequestedOrientation(Landroid/os/IBinder;I)V
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "requestedOrientation"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4122
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4123
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4124
    .local v1, "reply":Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4125
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 4126
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4127
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x46

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4128
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4129
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4130
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4131
    return-void
.end method

.method public setServiceForeground(Landroid/content/ComponentName;Landroid/os/IBinder;ILandroid/app/Notification;Z)V
    .locals 5
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "id"    # I
    .param p4, "notification"    # Landroid/app/Notification;
    .param p5, "removeNotification"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 3903
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3904
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3905
    .local v1, "reply":Landroid/os/Parcel;
    const-string v4, "android.app.IActivityManager"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3906
    invoke-static {p1, v0}, Landroid/content/ComponentName;->writeToParcel(Landroid/content/ComponentName;Landroid/os/Parcel;)V

    .line 3907
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 3908
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3909
    if-eqz p4, :cond_0

    .line 3910
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3911
    invoke-virtual {p4, v0, v3}, Landroid/app/Notification;->writeToParcel(Landroid/os/Parcel;I)V

    .line 3915
    :goto_0
    if-eqz p5, :cond_1

    :goto_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3916
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x4a

    invoke-interface {v2, v4, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3917
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3918
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3919
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3920
    return-void

    .line 3913
    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :cond_1
    move v2, v3

    .line 3915
    goto :goto_1
.end method

.method public setTaskDescription(Landroid/os/IBinder;Landroid/app/ActivityManager$TaskDescription;)V
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "values"    # Landroid/app/ActivityManager$TaskDescription;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 5985
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5986
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5987
    .local v1, "reply":Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5988
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 5989
    invoke-virtual {p2, v0, v4}, Landroid/app/ActivityManager$TaskDescription;->writeToParcel(Landroid/os/Parcel;I)V

    .line 5990
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xda

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5991
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5992
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5993
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5994
    return-void
.end method

.method public setTaskResizeable(IZ)V
    .locals 5
    .param p1, "taskId"    # I
    .param p2, "resizeable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 5998
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5999
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6000
    .local v1, "reply":Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6001
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 6002
    if-eqz p2, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6003
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x11c

    invoke-interface {v2, v4, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 6004
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6005
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6006
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6007
    return-void

    :cond_0
    move v2, v3

    .line 6002
    goto :goto_0
.end method

.method public setUserIsMonkey(Z)V
    .locals 5
    .param p1, "monkey"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 4865
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4866
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4867
    .local v1, "reply":Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4868
    if-eqz p1, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4869
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xa6

    invoke-interface {v2, v4, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4870
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4871
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4872
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4873
    return-void

    :cond_0
    move v2, v3

    .line 4868
    goto :goto_0
.end method

.method public setVoiceKeepAwake(Landroid/service/voice/IVoiceInteractionSession;Z)V
    .locals 5
    .param p1, "session"    # Landroid/service/voice/IVoiceInteractionSession;
    .param p2, "keepAwake"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 6175
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6176
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6177
    .local v1, "reply":Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6178
    invoke-interface {p1}, Landroid/service/voice/IVoiceInteractionSession;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 6179
    if-eqz p2, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6180
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x122

    invoke-interface {v2, v4, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 6181
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6182
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6183
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6184
    return-void

    :cond_0
    move v2, v3

    .line 6179
    goto :goto_0
.end method

.method public shouldUpRecreateTask(Landroid/os/IBinder;Ljava/lang/String;)Z
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "destAffinity"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 5490
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5491
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5492
    .local v1, "reply":Landroid/os/Parcel;
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5493
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 5494
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5495
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x92

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5496
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5497
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 5498
    .local v2, "result":Z
    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5499
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5500
    return v2
.end method

.method public showAssistFromActivity(Landroid/os/IBinder;Landroid/os/Bundle;)Z
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "args"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 5695
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5696
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5697
    .local v1, "reply":Landroid/os/Parcel;
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5698
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 5699
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 5700
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x12d

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5701
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5702
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 5703
    .local v2, "res":Z
    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5704
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5705
    return v2
.end method

.method public showBootMessage(Ljava/lang/CharSequence;Z)V
    .locals 5
    .param p1, "msg"    # Ljava/lang/CharSequence;
    .param p2, "always"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 5454
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5455
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5456
    .local v1, "reply":Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5457
    invoke-static {p1, v0, v3}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 5458
    if-eqz p2, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5459
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x8a

    invoke-interface {v2, v4, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5460
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5461
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5462
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5463
    return-void

    :cond_0
    move v2, v3

    .line 5458
    goto :goto_0
.end method

.method public showLockTaskEscapeMessage(Landroid/os/IBinder;)V
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 5971
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5972
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5973
    .local v1, "reply":Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5974
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 5975
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x127

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5977
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5978
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5979
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5980
    return-void
.end method

.method public showWaitingForDebugger(Landroid/app/IApplicationThread;Z)V
    .locals 5
    .param p1, "who"    # Landroid/app/IApplicationThread;
    .param p2, "waiting"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 4437
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4438
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4439
    .local v1, "reply":Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4440
    invoke-interface {p1}, Landroid/app/IApplicationThread;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 4441
    if-eqz p2, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4442
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x3a

    invoke-interface {v2, v4, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4443
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4444
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4445
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4446
    return-void

    :cond_0
    move v2, v3

    .line 4441
    goto :goto_0
.end method

.method public shutdown(I)Z
    .locals 5
    .param p1, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 4743
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4744
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4745
    .local v1, "reply":Landroid/os/Parcel;
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4746
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4747
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x57

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4748
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4749
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 4750
    .local v2, "res":Z
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4751
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4752
    return v2
.end method

.method public signalPersistentProcesses(I)V
    .locals 5
    .param p1, "sig"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4647
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4648
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4649
    .local v1, "reply":Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4650
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4651
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x3b

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4652
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4653
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4654
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4655
    return-void
.end method

.method public startActivities(Landroid/app/IApplicationThread;Ljava/lang/String;[Landroid/content/Intent;[Ljava/lang/String;Landroid/os/IBinder;Landroid/os/Bundle;I)I
    .locals 6
    .param p1, "caller"    # Landroid/app/IApplicationThread;
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "intents"    # [Landroid/content/Intent;
    .param p4, "resolvedTypes"    # [Ljava/lang/String;
    .param p5, "resultTo"    # Landroid/os/IBinder;
    .param p6, "options"    # Landroid/os/Bundle;
    .param p7, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 5111
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5112
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5113
    .local v1, "reply":Landroid/os/Parcel;
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5114
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/app/IApplicationThread;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 5115
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5116
    invoke-virtual {v0, p3, v5}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 5117
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 5118
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 5119
    if-eqz p6, :cond_1

    .line 5120
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 5121
    invoke-virtual {p6, v0, v5}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 5125
    :goto_1
    invoke-virtual {v0, p7}, Landroid/os/Parcel;->writeInt(I)V

    .line 5126
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x79

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5127
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5128
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 5129
    .local v2, "result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5130
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5131
    return v2

    .line 5114
    .end local v2    # "result":I
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 5123
    :cond_1
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1
.end method

.method public startActivity(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;)I
    .locals 7
    .param p1, "caller"    # Landroid/app/IApplicationThread;
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "intent"    # Landroid/content/Intent;
    .param p4, "resolvedType"    # Ljava/lang/String;
    .param p5, "resultTo"    # Landroid/os/IBinder;
    .param p6, "resultWho"    # Ljava/lang/String;
    .param p7, "requestCode"    # I
    .param p8, "startFlags"    # I
    .param p9, "profilerInfo"    # Landroid/app/ProfilerInfo;
    .param p10, "options"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2777
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2778
    .local v1, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 2779
    .local v2, "reply":Landroid/os/Parcel;
    const-string v4, "android.app.IActivityManager"

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2780
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/app/IApplicationThread;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    :goto_0
    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2781
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2782
    const/4 v4, 0x0

    invoke-virtual {p3, v1, v4}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2783
    invoke-virtual {v1, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2784
    invoke-virtual {v1, p5}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2785
    invoke-virtual {v1, p6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2786
    invoke-virtual {v1, p7}, Landroid/os/Parcel;->writeInt(I)V

    .line 2787
    invoke-virtual {v1, p8}, Landroid/os/Parcel;->writeInt(I)V

    .line 2788
    if-eqz p9, :cond_1

    .line 2789
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2790
    const/4 v4, 0x1

    move-object/from16 v0, p9

    invoke-virtual {v0, v1, v4}, Landroid/app/ProfilerInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2794
    :goto_1
    if-eqz p10, :cond_2

    .line 2795
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2796
    const/4 v4, 0x0

    move-object/from16 v0, p10

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2800
    :goto_2
    iget-object v4, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-interface {v4, v5, v1, v2, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2801
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 2802
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 2803
    .local v3, "result":I
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 2804
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2805
    return v3

    .line 2780
    .end local v3    # "result":I
    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .line 2792
    :cond_1
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .line 2798
    :cond_2
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2
.end method

.method public startActivityAndWait(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;I)Landroid/app/IActivityManager$WaitResult;
    .locals 7
    .param p1, "caller"    # Landroid/app/IApplicationThread;
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "intent"    # Landroid/content/Intent;
    .param p4, "resolvedType"    # Ljava/lang/String;
    .param p5, "resultTo"    # Landroid/os/IBinder;
    .param p6, "resultWho"    # Ljava/lang/String;
    .param p7, "requestCode"    # I
    .param p8, "startFlags"    # I
    .param p9, "profilerInfo"    # Landroid/app/ProfilerInfo;
    .param p10, "options"    # Landroid/os/Bundle;
    .param p11, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2883
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2884
    .local v1, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 2885
    .local v2, "reply":Landroid/os/Parcel;
    const-string v4, "android.app.IActivityManager"

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2886
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/app/IApplicationThread;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    :goto_0
    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2887
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2888
    const/4 v4, 0x0

    invoke-virtual {p3, v1, v4}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2889
    invoke-virtual {v1, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2890
    invoke-virtual {v1, p5}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2891
    invoke-virtual {v1, p6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2892
    invoke-virtual {v1, p7}, Landroid/os/Parcel;->writeInt(I)V

    .line 2893
    invoke-virtual {v1, p8}, Landroid/os/Parcel;->writeInt(I)V

    .line 2894
    if-eqz p9, :cond_1

    .line 2895
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2896
    const/4 v4, 0x1

    move-object/from16 v0, p9

    invoke-virtual {v0, v1, v4}, Landroid/app/ProfilerInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2900
    :goto_1
    if-eqz p10, :cond_2

    .line 2901
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2902
    const/4 v4, 0x0

    move-object/from16 v0, p10

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2906
    :goto_2
    move/from16 v0, p11

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2907
    iget-object v4, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0x69

    const/4 v6, 0x0

    invoke-interface {v4, v5, v1, v2, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2908
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 2909
    sget-object v4, Landroid/app/IActivityManager$WaitResult;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, v2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/IActivityManager$WaitResult;

    .line 2910
    .local v3, "result":Landroid/app/IActivityManager$WaitResult;
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 2911
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2912
    return-object v3

    .line 2886
    .end local v3    # "result":Landroid/app/IActivityManager$WaitResult;
    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .line 2898
    :cond_1
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .line 2904
    :cond_2
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2
.end method

.method public startActivityAsCaller(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;ZI)I
    .locals 7
    .param p1, "caller"    # Landroid/app/IApplicationThread;
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "intent"    # Landroid/content/Intent;
    .param p4, "resolvedType"    # Ljava/lang/String;
    .param p5, "resultTo"    # Landroid/os/IBinder;
    .param p6, "resultWho"    # Ljava/lang/String;
    .param p7, "requestCode"    # I
    .param p8, "startFlags"    # I
    .param p9, "profilerInfo"    # Landroid/app/ProfilerInfo;
    .param p10, "options"    # Landroid/os/Bundle;
    .param p11, "ignoreTargetSecurity"    # Z
    .param p12, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2847
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2848
    .local v1, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 2849
    .local v2, "reply":Landroid/os/Parcel;
    const-string v4, "android.app.IActivityManager"

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2850
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/app/IApplicationThread;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    :goto_0
    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2851
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2852
    const/4 v4, 0x0

    invoke-virtual {p3, v1, v4}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2853
    invoke-virtual {v1, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2854
    invoke-virtual {v1, p5}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2855
    invoke-virtual {v1, p6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2856
    invoke-virtual {v1, p7}, Landroid/os/Parcel;->writeInt(I)V

    .line 2857
    invoke-virtual {v1, p8}, Landroid/os/Parcel;->writeInt(I)V

    .line 2858
    if-eqz p9, :cond_1

    .line 2859
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2860
    const/4 v4, 0x1

    move-object/from16 v0, p9

    invoke-virtual {v0, v1, v4}, Landroid/app/ProfilerInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2864
    :goto_1
    if-eqz p10, :cond_2

    .line 2865
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2866
    const/4 v4, 0x0

    move-object/from16 v0, p10

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2870
    :goto_2
    if-eqz p11, :cond_3

    const/4 v4, 0x1

    :goto_3
    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2871
    move/from16 v0, p12

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2872
    iget-object v4, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0xe9

    const/4 v6, 0x0

    invoke-interface {v4, v5, v1, v2, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2873
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 2874
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 2875
    .local v3, "result":I
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 2876
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2877
    return v3

    .line 2850
    .end local v3    # "result":I
    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .line 2862
    :cond_1
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .line 2868
    :cond_2
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2

    .line 2870
    :cond_3
    const/4 v4, 0x0

    goto :goto_3
.end method

.method public startActivityAsUser(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;I)I
    .locals 7
    .param p1, "caller"    # Landroid/app/IApplicationThread;
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "intent"    # Landroid/content/Intent;
    .param p4, "resolvedType"    # Ljava/lang/String;
    .param p5, "resultTo"    # Landroid/os/IBinder;
    .param p6, "resultWho"    # Ljava/lang/String;
    .param p7, "requestCode"    # I
    .param p8, "startFlags"    # I
    .param p9, "profilerInfo"    # Landroid/app/ProfilerInfo;
    .param p10, "options"    # Landroid/os/Bundle;
    .param p11, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2812
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2813
    .local v1, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 2814
    .local v2, "reply":Landroid/os/Parcel;
    const-string v4, "android.app.IActivityManager"

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2815
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/app/IApplicationThread;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    :goto_0
    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2816
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2817
    const/4 v4, 0x0

    invoke-virtual {p3, v1, v4}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2818
    invoke-virtual {v1, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2819
    invoke-virtual {v1, p5}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2820
    invoke-virtual {v1, p6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2821
    invoke-virtual {v1, p7}, Landroid/os/Parcel;->writeInt(I)V

    .line 2822
    invoke-virtual {v1, p8}, Landroid/os/Parcel;->writeInt(I)V

    .line 2823
    if-eqz p9, :cond_1

    .line 2824
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2825
    const/4 v4, 0x1

    move-object/from16 v0, p9

    invoke-virtual {v0, v1, v4}, Landroid/app/ProfilerInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2829
    :goto_1
    if-eqz p10, :cond_2

    .line 2830
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2831
    const/4 v4, 0x0

    move-object/from16 v0, p10

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2835
    :goto_2
    move/from16 v0, p11

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2836
    iget-object v4, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0x99

    const/4 v6, 0x0

    invoke-interface {v4, v5, v1, v2, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2837
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 2838
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 2839
    .local v3, "result":I
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 2840
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2841
    return v3

    .line 2815
    .end local v3    # "result":I
    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .line 2827
    :cond_1
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .line 2833
    :cond_2
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2
.end method

.method public startActivityFromRecents(ILandroid/os/Bundle;)I
    .locals 6
    .param p1, "taskId"    # I
    .param p2, "options"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 3034
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3035
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3036
    .local v1, "reply":Landroid/os/Parcel;
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3037
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3038
    if-nez p2, :cond_0

    .line 3039
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 3044
    :goto_0
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xe6

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3045
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3046
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3047
    .local v2, "result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3048
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3049
    return v2

    .line 3041
    .end local v2    # "result":I
    :cond_0
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3042
    invoke-virtual {p2, v0, v5}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0
.end method

.method public startActivityIntentSender(Landroid/app/IApplicationThread;Landroid/content/IntentSender;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;)I
    .locals 7
    .param p1, "caller"    # Landroid/app/IApplicationThread;
    .param p2, "intent"    # Landroid/content/IntentSender;
    .param p3, "fillInIntent"    # Landroid/content/Intent;
    .param p4, "resolvedType"    # Ljava/lang/String;
    .param p5, "resultTo"    # Landroid/os/IBinder;
    .param p6, "resultWho"    # Ljava/lang/String;
    .param p7, "requestCode"    # I
    .param p8, "flagsMask"    # I
    .param p9, "flagsValues"    # I
    .param p10, "options"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2948
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2949
    .local v1, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 2950
    .local v2, "reply":Landroid/os/Parcel;
    const-string v4, "android.app.IActivityManager"

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2951
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/app/IApplicationThread;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    :goto_0
    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2952
    const/4 v4, 0x0

    invoke-virtual {p2, v1, v4}, Landroid/content/IntentSender;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2953
    if-eqz p3, :cond_1

    .line 2954
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2955
    const/4 v4, 0x0

    invoke-virtual {p3, v1, v4}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2959
    :goto_1
    invoke-virtual {v1, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2960
    invoke-virtual {v1, p5}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2961
    invoke-virtual {v1, p6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2962
    invoke-virtual {v1, p7}, Landroid/os/Parcel;->writeInt(I)V

    .line 2963
    invoke-virtual {v1, p8}, Landroid/os/Parcel;->writeInt(I)V

    .line 2964
    move/from16 v0, p9

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2965
    if-eqz p10, :cond_2

    .line 2966
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2967
    const/4 v4, 0x0

    move-object/from16 v0, p10

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2971
    :goto_2
    iget-object v4, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0x64

    const/4 v6, 0x0

    invoke-interface {v4, v5, v1, v2, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2972
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 2973
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 2974
    .local v3, "result":I
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 2975
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2976
    return v3

    .line 2951
    .end local v3    # "result":I
    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .line 2957
    :cond_1
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .line 2969
    :cond_2
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2
.end method

.method public startActivityWithConfig(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/content/res/Configuration;Landroid/os/Bundle;I)I
    .locals 7
    .param p1, "caller"    # Landroid/app/IApplicationThread;
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "intent"    # Landroid/content/Intent;
    .param p4, "resolvedType"    # Ljava/lang/String;
    .param p5, "resultTo"    # Landroid/os/IBinder;
    .param p6, "resultWho"    # Ljava/lang/String;
    .param p7, "requestCode"    # I
    .param p8, "startFlags"    # I
    .param p9, "config"    # Landroid/content/res/Configuration;
    .param p10, "options"    # Landroid/os/Bundle;
    .param p11, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2918
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2919
    .local v1, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 2920
    .local v2, "reply":Landroid/os/Parcel;
    const-string v4, "android.app.IActivityManager"

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2921
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/app/IApplicationThread;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    :goto_0
    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2922
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2923
    const/4 v4, 0x0

    invoke-virtual {p3, v1, v4}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2924
    invoke-virtual {v1, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2925
    invoke-virtual {v1, p5}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2926
    invoke-virtual {v1, p6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2927
    invoke-virtual {v1, p7}, Landroid/os/Parcel;->writeInt(I)V

    .line 2928
    invoke-virtual {v1, p8}, Landroid/os/Parcel;->writeInt(I)V

    .line 2929
    const/4 v4, 0x0

    move-object/from16 v0, p9

    invoke-virtual {v0, v1, v4}, Landroid/content/res/Configuration;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2930
    if-eqz p10, :cond_1

    .line 2931
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2932
    const/4 v4, 0x0

    move-object/from16 v0, p10

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2936
    :goto_1
    move/from16 v0, p11

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2937
    iget-object v4, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-interface {v4, v5, v1, v2, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2938
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 2939
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 2940
    .local v3, "result":I
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 2941
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2942
    return v3

    .line 2921
    .end local v3    # "result":I
    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .line 2934
    :cond_1
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1
.end method

.method public startInPlaceAnimationOnFrontMostApplication(Landroid/app/ActivityOptions;)V
    .locals 5
    .param p1, "options"    # Landroid/app/ActivityOptions;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 6040
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6041
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6042
    .local v1, "reply":Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6043
    if-nez p1, :cond_0

    .line 6044
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 6049
    :goto_0
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xf1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 6050
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6051
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6052
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6053
    return-void

    .line 6046
    :cond_0
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6047
    invoke-virtual {p1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public startInstrumentation(Landroid/content/ComponentName;Ljava/lang/String;ILandroid/os/Bundle;Landroid/app/IInstrumentationWatcher;Landroid/app/IUiAutomationConnection;ILjava/lang/String;)Z
    .locals 5
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "profileFile"    # Ljava/lang/String;
    .param p3, "flags"    # I
    .param p4, "arguments"    # Landroid/os/Bundle;
    .param p5, "watcher"    # Landroid/app/IInstrumentationWatcher;
    .param p6, "connection"    # Landroid/app/IUiAutomationConnection;
    .param p7, "userId"    # I
    .param p8, "instructionSet"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 4065
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4066
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4067
    .local v1, "reply":Landroid/os/Parcel;
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4068
    invoke-static {p1, v0}, Landroid/content/ComponentName;->writeToParcel(Landroid/content/ComponentName;Landroid/os/Parcel;)V

    .line 4069
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4070
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 4071
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 4072
    if-eqz p5, :cond_2

    invoke-interface {p5}, Landroid/app/IInstrumentationWatcher;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 4073
    if-eqz p6, :cond_0

    invoke-interface {p6}, Landroid/app/IUiAutomationConnection;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    :cond_0
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 4074
    invoke-virtual {v0, p7}, Landroid/os/Parcel;->writeInt(I)V

    .line 4075
    invoke-virtual {v0, p8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4076
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x2c

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4077
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4078
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x1

    .line 4079
    .local v2, "res":Z
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4080
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4081
    return v2

    .end local v2    # "res":Z
    :cond_2
    move-object v3, v4

    .line 4072
    goto :goto_0
.end method

.method public startLockTaskMode(I)V
    .locals 5
    .param p1, "taskId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 5888
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5889
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5890
    .local v1, "reply":Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5891
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5892
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xd6

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5893
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5894
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5895
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5896
    return-void
.end method

.method public startLockTaskMode(Landroid/os/IBinder;)V
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 5900
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5901
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5902
    .local v1, "reply":Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5903
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 5904
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xd7

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5905
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5906
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5907
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5908
    return-void
.end method

.method public startLockTaskModeOnCurrent()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 5912
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5913
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5914
    .local v1, "reply":Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5915
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xde

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5916
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5917
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5918
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5919
    return-void
.end method

.method public startNextMatchingActivity(Landroid/os/IBinder;Landroid/content/Intent;Landroid/os/Bundle;)Z
    .locals 7
    .param p1, "callingActivity"    # Landroid/os/IBinder;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "options"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 3015
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3016
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3017
    .local v1, "reply":Landroid/os/Parcel;
    const-string v5, "android.app.IActivityManager"

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3018
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 3019
    invoke-virtual {p2, v0, v4}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 3020
    if-eqz p3, :cond_0

    .line 3021
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3022
    invoke-virtual {p3, v0, v4}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 3026
    :goto_0
    iget-object v5, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v6, 0x43

    invoke-interface {v5, v6, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3027
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3028
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3029
    .local v2, "result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3030
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3031
    if-eqz v2, :cond_1

    :goto_1
    return v3

    .line 3024
    .end local v2    # "result":I
    :cond_0
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .restart local v2    # "result":I
    :cond_1
    move v3, v4

    .line 3031
    goto :goto_1
.end method

.method public startService(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;I)Landroid/content/ComponentName;
    .locals 6
    .param p1, "caller"    # Landroid/app/IApplicationThread;
    .param p2, "service"    # Landroid/content/Intent;
    .param p3, "resolvedType"    # Ljava/lang/String;
    .param p4, "callingPackage"    # Ljava/lang/String;
    .param p5, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 3854
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3855
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3856
    .local v1, "reply":Landroid/os/Parcel;
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3857
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/app/IApplicationThread;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 3858
    invoke-virtual {p2, v0, v5}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 3859
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3860
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3861
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 3862
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x22

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3863
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3864
    invoke-static {v1}, Landroid/content/ComponentName;->readFromParcel(Landroid/os/Parcel;)Landroid/content/ComponentName;

    move-result-object v2

    .line 3865
    .local v2, "res":Landroid/content/ComponentName;
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3866
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3867
    return-object v2

    .line 3857
    .end local v2    # "res":Landroid/content/ComponentName;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public startUserInBackground(I)Z
    .locals 5
    .param p1, "userid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 5223
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5224
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5225
    .local v1, "reply":Landroid/os/Parcel;
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5226
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5227
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xd4

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5228
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5229
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 5230
    .local v2, "result":Z
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5231
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5232
    return v2
.end method

.method public startVoiceActivity(Ljava/lang/String;IILandroid/content/Intent;Ljava/lang/String;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;ILandroid/app/ProfilerInfo;Landroid/os/Bundle;I)I
    .locals 7
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "callingPid"    # I
    .param p3, "callingUid"    # I
    .param p4, "intent"    # Landroid/content/Intent;
    .param p5, "resolvedType"    # Ljava/lang/String;
    .param p6, "session"    # Landroid/service/voice/IVoiceInteractionSession;
    .param p7, "interactor"    # Lcom/android/internal/app/IVoiceInteractor;
    .param p8, "startFlags"    # I
    .param p9, "profilerInfo"    # Landroid/app/ProfilerInfo;
    .param p10, "options"    # Landroid/os/Bundle;
    .param p11, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2982
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2983
    .local v1, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 2984
    .local v2, "reply":Landroid/os/Parcel;
    const-string v4, "android.app.IActivityManager"

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2985
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2986
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2987
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2988
    const/4 v4, 0x0

    invoke-virtual {p4, v1, v4}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2989
    invoke-virtual {v1, p5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2990
    invoke-interface {p6}, Landroid/service/voice/IVoiceInteractionSession;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2991
    invoke-interface {p7}, Lcom/android/internal/app/IVoiceInteractor;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2992
    invoke-virtual {v1, p8}, Landroid/os/Parcel;->writeInt(I)V

    .line 2993
    if-eqz p9, :cond_0

    .line 2994
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2995
    const/4 v4, 0x1

    move-object/from16 v0, p9

    invoke-virtual {v0, v1, v4}, Landroid/app/ProfilerInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2999
    :goto_0
    if-eqz p10, :cond_1

    .line 3000
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 3001
    const/4 v4, 0x0

    move-object/from16 v0, p10

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 3005
    :goto_1
    move/from16 v0, p11

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3006
    iget-object v4, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0xdb

    const/4 v6, 0x0

    invoke-interface {v4, v5, v1, v2, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3007
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 3008
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 3009
    .local v3, "result":I
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 3010
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3011
    return v3

    .line 2997
    .end local v3    # "result":I
    :cond_0
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 3003
    :cond_1
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1
.end method

.method public stopAppSwitches()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4756
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4757
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4758
    .local v1, "reply":Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4759
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x58

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4760
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4761
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4762
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4763
    return-void
.end method

.method public stopLockTaskMode()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 5923
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5924
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5925
    .local v1, "reply":Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5926
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xd8

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5927
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5928
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5929
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5930
    return-void
.end method

.method public stopLockTaskModeOnCurrent()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 5934
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5935
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5936
    .local v1, "reply":Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5937
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xdf

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5938
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5939
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5940
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5941
    return-void
.end method

.method public stopService(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;I)I
    .locals 6
    .param p1, "caller"    # Landroid/app/IApplicationThread;
    .param p2, "service"    # Landroid/content/Intent;
    .param p3, "resolvedType"    # Ljava/lang/String;
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 3872
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3873
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3874
    .local v1, "reply":Landroid/os/Parcel;
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3875
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/app/IApplicationThread;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 3876
    invoke-virtual {p2, v0, v5}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 3877
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3878
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 3879
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x23

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3880
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3881
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3882
    .local v2, "res":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3883
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3884
    return v2

    .line 3875
    .end local v2    # "res":I
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public stopServiceToken(Landroid/content/ComponentName;Landroid/os/IBinder;I)Z
    .locals 5
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "startId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 3888
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3889
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3890
    .local v1, "reply":Landroid/os/Parcel;
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3891
    invoke-static {p1, v0}, Landroid/content/ComponentName;->writeToParcel(Landroid/content/ComponentName;Landroid/os/Parcel;)V

    .line 3892
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 3893
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3894
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x30

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3895
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3896
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 3897
    .local v2, "res":Z
    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3898
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3899
    return v2
.end method

.method public stopUser(ILandroid/app/IStopUserCallback;)I
    .locals 6
    .param p1, "userid"    # I
    .param p2, "callback"    # Landroid/app/IStopUserCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 5236
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5237
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5238
    .local v1, "reply":Landroid/os/Parcel;
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5239
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5240
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 5241
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x9a

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5242
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5243
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 5244
    .local v2, "result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5245
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5246
    return v2
.end method

.method public switchUser(I)Z
    .locals 5
    .param p1, "userid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 5210
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5211
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5212
    .local v1, "reply":Landroid/os/Parcel;
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5213
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5214
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x82

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5215
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5216
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 5217
    .local v2, "result":Z
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5218
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5219
    return v2
.end method

.method public takePersistableUriPermission(Landroid/net/Uri;II)V
    .locals 5
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "mode"    # I
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 4391
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4392
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4393
    .local v1, "reply":Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4394
    invoke-virtual {p1, v0, v4}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    .line 4395
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4396
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 4397
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xb4

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4398
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4399
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4400
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4401
    return-void
.end method

.method public testIsSystemReady()Z
    .locals 1

    .prologue
    .line 4596
    const/4 v0, 0x1

    return v0
.end method

.method public unbindBackupAgent(Landroid/content/pm/ApplicationInfo;)V
    .locals 5
    .param p1, "app"    # Landroid/content/pm/ApplicationInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 4051
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4052
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4053
    .local v1, "reply":Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4054
    invoke-virtual {p1, v0, v4}, Landroid/content/pm/ApplicationInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 4055
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x5c

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4056
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4057
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4058
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4059
    return-void
.end method

.method public unbindFinished(Landroid/os/IBinder;Landroid/content/Intent;Z)V
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "doRebind"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 3972
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3973
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3974
    .local v1, "reply":Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3975
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 3976
    invoke-virtual {p2, v0, v3}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 3977
    if-eqz p3, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3978
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x48

    invoke-interface {v2, v4, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3979
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3980
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3981
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3982
    return-void

    :cond_0
    move v2, v3

    .line 3977
    goto :goto_0
.end method

.method public unbindService(Landroid/app/IServiceConnection;)Z
    .locals 5
    .param p1, "connection"    # Landroid/app/IServiceConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 3944
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3945
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3946
    .local v1, "reply":Landroid/os/Parcel;
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3947
    invoke-interface {p1}, Landroid/app/IServiceConnection;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 3948
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x25

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3949
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3950
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 3951
    .local v2, "res":Z
    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3952
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3953
    return v2
.end method

.method public unbroadcastIntent(Landroid/app/IApplicationThread;Landroid/content/Intent;I)V
    .locals 5
    .param p1, "caller"    # Landroid/app/IApplicationThread;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 3208
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3209
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3210
    .local v1, "reply":Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3211
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/app/IApplicationThread;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 3212
    invoke-virtual {p2, v0, v4}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 3213
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3214
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xf

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3215
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3216
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3217
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3218
    return-void

    .line 3211
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public unhandledBack()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4459
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4460
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4461
    .local v1, "reply":Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4462
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4463
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4464
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4465
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4466
    return-void
.end method

.method public unregisterProcessObserver(Landroid/app/IProcessObserver;)V
    .locals 5
    .param p1, "observer"    # Landroid/app/IProcessObserver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 5341
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5342
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5343
    .local v1, "reply":Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5344
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/app/IProcessObserver;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 5345
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x86

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5346
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5347
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5348
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5349
    return-void

    .line 5344
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public unregisterReceiver(Landroid/content/IIntentReceiver;)V
    .locals 5
    .param p1, "receiver"    # Landroid/content/IIntentReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3167
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3168
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3169
    .local v1, "reply":Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3170
    invoke-interface {p1}, Landroid/content/IIntentReceiver;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 3171
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xd

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3172
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3173
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3174
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3175
    return-void
.end method

.method public unregisterUidObserver(Landroid/app/IUidObserver;)V
    .locals 5
    .param p1, "observer"    # Landroid/app/IUidObserver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 5363
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5364
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5365
    .local v1, "reply":Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5366
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/app/IUidObserver;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 5367
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x12b

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5368
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5369
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5370
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5371
    return-void

    .line 5366
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public unregisterUserSwitchObserver(Landroid/app/IUserSwitchObserver;)V
    .locals 5
    .param p1, "observer"    # Landroid/app/IUserSwitchObserver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 5563
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5564
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5565
    .local v1, "reply":Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5566
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/app/IUserSwitchObserver;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 5567
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x9c

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5568
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5569
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5570
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5571
    return-void

    .line 5566
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public unstableProviderDied(Landroid/os/IBinder;)V
    .locals 5
    .param p1, "connection"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3790
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3791
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3792
    .local v1, "reply":Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3793
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 3794
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x97

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3795
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3796
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3797
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3798
    return-void
.end method

.method public updateConfiguration(Landroid/content/res/Configuration;)V
    .locals 5
    .param p1, "values"    # Landroid/content/res/Configuration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 4111
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4112
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4113
    .local v1, "reply":Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4114
    invoke-virtual {p1, v0, v4}, Landroid/content/res/Configuration;->writeToParcel(Landroid/os/Parcel;I)V

    .line 4115
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x2f

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4116
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4117
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4118
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4119
    return-void
.end method

.method public updateDeviceOwner(Ljava/lang/String;)V
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 6201
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6202
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6203
    .local v1, "reply":Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6204
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6205
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x128

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 6206
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6207
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6208
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6209
    return-void
.end method

.method public updateLockTaskPackages(I[Ljava/lang/String;)V
    .locals 5
    .param p1, "userId"    # I
    .param p2, "packages"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 6188
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6189
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6190
    .local v1, "reply":Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6191
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 6192
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 6193
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x123

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 6194
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6195
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6196
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6197
    return-void
.end method

.method public updatePersistentConfiguration(Landroid/content/res/Configuration;)V
    .locals 5
    .param p1, "values"    # Landroid/content/res/Configuration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 5430
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5431
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5432
    .local v1, "reply":Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5433
    invoke-virtual {p1, v0, v4}, Landroid/content/res/Configuration;->writeToParcel(Landroid/os/Parcel;I)V

    .line 5434
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x88

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5435
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5436
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5437
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5438
    return-void
.end method

.method public willActivityBeVisible(Landroid/os/IBinder;)Z
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 3130
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3131
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3132
    .local v1, "reply":Landroid/os/Parcel;
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3133
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 3134
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x6a

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3135
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3136
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 3137
    .local v2, "res":Z
    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3138
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3139
    return v2
.end method
