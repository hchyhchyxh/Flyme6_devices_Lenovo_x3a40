.class Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;
.super Landroid/content/pm/PackageManagerInternal;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PackageManagerInternalImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/pm/PackageManagerService;)V
    .locals 0

    .prologue
    .line 17868
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-direct {p0}, Landroid/content/pm/PackageManagerInternal;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/pm/PackageManagerService;
    .param p2, "x1"    # Lcom/android/server/pm/PackageManagerService$1;

    .prologue
    .line 17868
    invoke-direct {p0, p1}, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;-><init>(Lcom/android/server/pm/PackageManagerService;)V

    return-void
.end method


# virtual methods
.method public grantDefaultPermissionsToDefaultDialerApp(Ljava/lang/String;I)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 17928
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 17929
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mDefaultPermissionPolicy:Lcom/android/server/pm/DefaultPermissionGrantPolicy;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantDefaultPermissionsToDefaultDialerAppLPr(Ljava/lang/String;I)V

    .line 17931
    monitor-exit v1

    .line 17932
    return-void

    .line 17931
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public grantDefaultPermissionsToDefaultSimCallManager(Ljava/lang/String;I)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 17935
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 17936
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mDefaultPermissionPolicy:Lcom/android/server/pm/DefaultPermissionGrantPolicy;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantDefaultPermissionsToDefaultSimCallManagerLPr(Ljava/lang/String;I)V

    .line 17938
    monitor-exit v1

    .line 17939
    return-void

    .line 17938
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public grantDefaultPermissionsToDefaultSmsApp(Ljava/lang/String;I)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 17920
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 17921
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mDefaultPermissionPolicy:Lcom/android/server/pm/DefaultPermissionGrantPolicy;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantDefaultPermissionsToDefaultSmsAppLPr(Ljava/lang/String;I)V

    .line 17923
    monitor-exit v1

    .line 17924
    return-void

    .line 17923
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setDialerAppPackagesProvider(Landroid/content/pm/PackageManagerInternal$PackagesProvider;)V
    .locals 2
    .param p1, "provider"    # Landroid/content/pm/PackageManagerInternal$PackagesProvider;

    .prologue
    .line 17899
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 17900
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mDefaultPermissionPolicy:Lcom/android/server/pm/DefaultPermissionGrantPolicy;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->setDialerAppPackagesProviderLPw(Landroid/content/pm/PackageManagerInternal$PackagesProvider;)V

    .line 17901
    monitor-exit v1

    .line 17902
    return-void

    .line 17901
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setImePackagesProvider(Landroid/content/pm/PackageManagerInternal$PackagesProvider;)V
    .locals 2
    .param p1, "provider"    # Landroid/content/pm/PackageManagerInternal$PackagesProvider;

    .prologue
    .line 17878
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 17879
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mDefaultPermissionPolicy:Lcom/android/server/pm/DefaultPermissionGrantPolicy;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->setImePackagesProviderLPr(Landroid/content/pm/PackageManagerInternal$PackagesProvider;)V

    .line 17880
    monitor-exit v1

    .line 17881
    return-void

    .line 17880
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setLocationPackagesProvider(Landroid/content/pm/PackageManagerInternal$PackagesProvider;)V
    .locals 2
    .param p1, "provider"    # Landroid/content/pm/PackageManagerInternal$PackagesProvider;

    .prologue
    .line 17871
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 17872
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mDefaultPermissionPolicy:Lcom/android/server/pm/DefaultPermissionGrantPolicy;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->setLocationPackagesProviderLPw(Landroid/content/pm/PackageManagerInternal$PackagesProvider;)V

    .line 17873
    monitor-exit v1

    .line 17874
    return-void

    .line 17873
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setSimCallManagerPackagesProvider(Landroid/content/pm/PackageManagerInternal$PackagesProvider;)V
    .locals 2
    .param p1, "provider"    # Landroid/content/pm/PackageManagerInternal$PackagesProvider;

    .prologue
    .line 17906
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 17907
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mDefaultPermissionPolicy:Lcom/android/server/pm/DefaultPermissionGrantPolicy;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->setSimCallManagerPackagesProviderLPw(Landroid/content/pm/PackageManagerInternal$PackagesProvider;)V

    .line 17908
    monitor-exit v1

    .line 17909
    return-void

    .line 17908
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setSmsAppPackagesProvider(Landroid/content/pm/PackageManagerInternal$PackagesProvider;)V
    .locals 2
    .param p1, "provider"    # Landroid/content/pm/PackageManagerInternal$PackagesProvider;

    .prologue
    .line 17892
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 17893
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mDefaultPermissionPolicy:Lcom/android/server/pm/DefaultPermissionGrantPolicy;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->setSmsAppPackagesProviderLPw(Landroid/content/pm/PackageManagerInternal$PackagesProvider;)V

    .line 17894
    monitor-exit v1

    .line 17895
    return-void

    .line 17894
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setSyncAdapterPackagesprovider(Landroid/content/pm/PackageManagerInternal$SyncAdapterPackagesProvider;)V
    .locals 2
    .param p1, "provider"    # Landroid/content/pm/PackageManagerInternal$SyncAdapterPackagesProvider;

    .prologue
    .line 17913
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 17914
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mDefaultPermissionPolicy:Lcom/android/server/pm/DefaultPermissionGrantPolicy;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->setSyncAdapterPackagesProviderLPw(Landroid/content/pm/PackageManagerInternal$SyncAdapterPackagesProvider;)V

    .line 17915
    monitor-exit v1

    .line 17916
    return-void

    .line 17915
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setVoiceInteractionPackagesProvider(Landroid/content/pm/PackageManagerInternal$PackagesProvider;)V
    .locals 2
    .param p1, "provider"    # Landroid/content/pm/PackageManagerInternal$PackagesProvider;

    .prologue
    .line 17885
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 17886
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mDefaultPermissionPolicy:Lcom/android/server/pm/DefaultPermissionGrantPolicy;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->setVoiceInteractionPackagesProviderLPw(Landroid/content/pm/PackageManagerInternal$PackagesProvider;)V

    .line 17887
    monitor-exit v1

    .line 17888
    return-void

    .line 17887
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
