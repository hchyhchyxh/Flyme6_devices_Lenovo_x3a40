.class final Landroid/app/SystemServiceRegistry$6;
.super Landroid/app/SystemServiceRegistry$CachedServiceFetcher;
.source "SystemServiceRegistry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/SystemServiceRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/SystemServiceRegistry$CachedServiceFetcher",
        "<",
        "Landroid/app/RestrictedPackageManager;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 190
    invoke-direct {p0}, Landroid/app/SystemServiceRegistry$CachedServiceFetcher;-><init>()V

    return-void
.end method


# virtual methods
.method public createService(Landroid/app/ContextImpl;)Landroid/app/RestrictedPackageManager;
    .locals 3
    .param p1, "ctx"    # Landroid/app/ContextImpl;

    .prologue
    .line 193
    const-string/jumbo v2, "restricted_packages"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 194
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Lcom/android/internal/app/IRestrictedPackageService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IRestrictedPackageService;

    move-result-object v1

    .line 195
    .local v1, "service":Lcom/android/internal/app/IRestrictedPackageService;
    new-instance v2, Landroid/app/RestrictedPackageManager;

    invoke-direct {v2, p1, v1}, Landroid/app/RestrictedPackageManager;-><init>(Landroid/content/Context;Lcom/android/internal/app/IRestrictedPackageService;)V

    return-object v2
.end method

.method public bridge synthetic createService(Landroid/app/ContextImpl;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/app/ContextImpl;

    .prologue
    .line 190
    invoke-virtual {p0, p1}, Landroid/app/SystemServiceRegistry$6;->createService(Landroid/app/ContextImpl;)Landroid/app/RestrictedPackageManager;

    move-result-object v0

    return-object v0
.end method
