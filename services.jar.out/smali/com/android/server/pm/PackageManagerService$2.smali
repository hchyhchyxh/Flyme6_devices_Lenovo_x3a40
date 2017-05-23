.class Lcom/android/server/pm/PackageManagerService$2;
.super Ljava/lang/Object;
.source "PackageManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/PackageManagerService;->freeStorageAndNotify(Ljava/lang/String;JLandroid/content/pm/IPackageDataObserver;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;

.field final synthetic val$freeStorageSize:J

.field final synthetic val$observer:Landroid/content/pm/IPackageDataObserver;

.field final synthetic val$volumeUuid:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;JLandroid/content/pm/IPackageDataObserver;)V
    .locals 1

    .prologue
    .line 3090
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$2;->this$0:Lcom/android/server/pm/PackageManagerService;

    iput-object p2, p0, Lcom/android/server/pm/PackageManagerService$2;->val$volumeUuid:Ljava/lang/String;

    iput-wide p3, p0, Lcom/android/server/pm/PackageManagerService$2;->val$freeStorageSize:J

    iput-object p5, p0, Lcom/android/server/pm/PackageManagerService$2;->val$observer:Landroid/content/pm/IPackageDataObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 3092
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$2;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mHandler:Lcom/android/server/pm/PackageManagerService$PackageHandler;

    invoke-virtual {v2, p0}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3093
    const/4 v1, -0x1

    .line 3094
    .local v1, "retCode":I
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$2;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v2, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Ljava/lang/Object;

    monitor-enter v3

    .line 3095
    :try_start_0
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$2;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$2;->val$volumeUuid:Ljava/lang/String;

    iget-wide v6, p0, Lcom/android/server/pm/PackageManagerService$2;->val$freeStorageSize:J

    invoke-virtual {v2, v4, v6, v7}, Lcom/android/server/pm/Installer;->freeCache(Ljava/lang/String;J)I

    move-result v1

    .line 3096
    if-gez v1, :cond_0

    .line 3097
    const-string v2, "PackageManager"

    const-string v4, "Couldn\'t clear application caches"

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3099
    :cond_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3100
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$2;->val$observer:Landroid/content/pm/IPackageDataObserver;

    if-eqz v2, :cond_1

    .line 3102
    :try_start_1
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$2;->val$observer:Landroid/content/pm/IPackageDataObserver;

    const/4 v4, 0x0

    if-ltz v1, :cond_2

    const/4 v2, 0x1

    :goto_0
    invoke-interface {v3, v4, v2}, Landroid/content/pm/IPackageDataObserver;->onRemoveCompleted(Ljava/lang/String;Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 3107
    :cond_1
    :goto_1
    return-void

    .line 3099
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 3102
    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    .line 3103
    :catch_0
    move-exception v0

    .line 3104
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "PackageManager"

    const-string v3, "RemoveException when invoking call back"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
