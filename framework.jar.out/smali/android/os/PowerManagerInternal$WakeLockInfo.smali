.class public final Landroid/os/PowerManagerInternal$WakeLockInfo;
.super Ljava/lang/Object;
.source "PowerManagerInternal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/PowerManagerInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "WakeLockInfo"
.end annotation


# instance fields
.field public flags:I

.field public packageName:Ljava/lang/String;

.field public userId:I


# direct methods
.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p1, "packagName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "flags"    # I

    .prologue
    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 168
    iput-object p1, p0, Landroid/os/PowerManagerInternal$WakeLockInfo;->packageName:Ljava/lang/String;

    .line 169
    iput p2, p0, Landroid/os/PowerManagerInternal$WakeLockInfo;->userId:I

    .line 170
    iput p3, p0, Landroid/os/PowerManagerInternal$WakeLockInfo;->flags:I

    .line 171
    return-void
.end method
