.class public final Lcom/android/server/display/SuperCast;
.super Ljava/lang/Object;
.source "SuperCast.java"


# static fields
.field private static final DEBUG:Z = true

.field private static final TAG:Ljava/lang/String; = "SuperCast"

.field private static final WFD_ENHANCED_ENU_PROP:Ljava/lang/String; = "persist.sys.wfd.enhanced.emu"

.field private static final WFD_ENHANCED_PROP:Ljava/lang/String; = "sys.wfd.enhanced"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isEmuEnabled()Z
    .locals 2

    .prologue
    .line 14
    const-string v0, "persist.sys.wfd.enhanced.emu"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isEnabled()Z
    .locals 2

    .prologue
    .line 18
    const-string v0, "sys.wfd.enhanced"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method
