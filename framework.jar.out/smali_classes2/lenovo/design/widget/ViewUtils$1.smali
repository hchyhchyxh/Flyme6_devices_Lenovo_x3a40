.class final Llenovo/design/widget/ViewUtils$1;
.super Ljava/lang/Object;
.source "ViewUtils.java"

# interfaces
.implements Llenovo/design/widget/ValueAnimatorCompat$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llenovo/design/widget/ViewUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createAnimator()Llenovo/design/widget/ValueAnimatorCompat;
    .locals 3

    .prologue
    .line 28
    new-instance v1, Llenovo/design/widget/ValueAnimatorCompat;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xc

    if-lt v0, v2, :cond_0

    new-instance v0, Llenovo/design/widget/ValueAnimatorCompatImplHoneycombMr1;

    invoke-direct {v0}, Llenovo/design/widget/ValueAnimatorCompatImplHoneycombMr1;-><init>()V

    :goto_0
    invoke-direct {v1, v0}, Llenovo/design/widget/ValueAnimatorCompat;-><init>(Llenovo/design/widget/ValueAnimatorCompat$Impl;)V

    return-object v1

    :cond_0
    new-instance v0, Llenovo/design/widget/ValueAnimatorCompatImplEclairMr1;

    invoke-direct {v0}, Llenovo/design/widget/ValueAnimatorCompatImplEclairMr1;-><init>()V

    goto :goto_0
.end method
