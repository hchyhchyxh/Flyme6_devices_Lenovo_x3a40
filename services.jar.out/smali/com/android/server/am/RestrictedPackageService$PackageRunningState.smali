.class final Lcom/android/server/am/RestrictedPackageService$PackageRunningState;
.super Ljava/lang/Object;
.source "RestrictedPackageService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/RestrictedPackageService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PackageRunningState"
.end annotation


# instance fields
.field foregroundActivities:Z

.field foregroundServices:Z

.field final pkgList:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field processName:Ljava/lang/String;

.field final setAdj:I

.field final userId:I


# direct methods
.method constructor <init>(Ljava/util/Set;II)V
    .locals 1
    .param p2, "userId"    # I
    .param p3, "setAdj"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 880
    .local p1, "pkgList":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 874
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/RestrictedPackageService$PackageRunningState;->pkgList:Ljava/util/Set;

    .line 881
    iput p2, p0, Lcom/android/server/am/RestrictedPackageService$PackageRunningState;->userId:I

    .line 882
    iput p3, p0, Lcom/android/server/am/RestrictedPackageService$PackageRunningState;->setAdj:I

    .line 883
    iget-object v0, p0, Lcom/android/server/am/RestrictedPackageService$PackageRunningState;->pkgList:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 884
    return-void
.end method
