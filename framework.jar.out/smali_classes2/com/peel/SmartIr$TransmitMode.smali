.class public final Lcom/peel/SmartIr$TransmitMode;
.super Ljava/lang/Object;
.source "SmartIr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/peel/SmartIr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TransmitMode"
.end annotation


# static fields
.field public static final ONCE:I = 0x0

.field public static final REPEAT_FOREVER:I = 0x1

.field public static final REPEAT_N_TIMES:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
