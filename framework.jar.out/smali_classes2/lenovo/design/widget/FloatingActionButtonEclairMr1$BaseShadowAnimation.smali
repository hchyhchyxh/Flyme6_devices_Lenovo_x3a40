.class abstract Llenovo/design/widget/FloatingActionButtonEclairMr1$BaseShadowAnimation;
.super Landroid/view/animation/Animation;
.source "FloatingActionButtonEclairMr1.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llenovo/design/widget/FloatingActionButtonEclairMr1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "BaseShadowAnimation"
.end annotation


# instance fields
.field private mShadowSizeDiff:F

.field private mShadowSizeStart:F

.field final synthetic this$0:Llenovo/design/widget/FloatingActionButtonEclairMr1;


# direct methods
.method private constructor <init>(Llenovo/design/widget/FloatingActionButtonEclairMr1;)V
    .locals 0

    .prologue
    .line 212
    iput-object p1, p0, Llenovo/design/widget/FloatingActionButtonEclairMr1$BaseShadowAnimation;->this$0:Llenovo/design/widget/FloatingActionButtonEclairMr1;

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Llenovo/design/widget/FloatingActionButtonEclairMr1;Llenovo/design/widget/FloatingActionButtonEclairMr1$1;)V
    .locals 0
    .param p1, "x0"    # Llenovo/design/widget/FloatingActionButtonEclairMr1;
    .param p2, "x1"    # Llenovo/design/widget/FloatingActionButtonEclairMr1$1;

    .prologue
    .line 212
    invoke-direct {p0, p1}, Llenovo/design/widget/FloatingActionButtonEclairMr1$BaseShadowAnimation;-><init>(Llenovo/design/widget/FloatingActionButtonEclairMr1;)V

    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 3
    .param p1, "interpolatedTime"    # F
    .param p2, "t"    # Landroid/view/animation/Transformation;

    .prologue
    .line 226
    iget-object v0, p0, Llenovo/design/widget/FloatingActionButtonEclairMr1$BaseShadowAnimation;->this$0:Llenovo/design/widget/FloatingActionButtonEclairMr1;

    iget-object v0, v0, Llenovo/design/widget/FloatingActionButtonEclairMr1;->mShadowDrawable:Llenovo/design/widget/ShadowDrawableWrapper;

    iget v1, p0, Llenovo/design/widget/FloatingActionButtonEclairMr1$BaseShadowAnimation;->mShadowSizeStart:F

    iget v2, p0, Llenovo/design/widget/FloatingActionButtonEclairMr1$BaseShadowAnimation;->mShadowSizeDiff:F

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Llenovo/design/widget/ShadowDrawableWrapper;->setShadowSize(F)V

    .line 227
    return-void
.end method

.method protected abstract getTargetShadowSize()F
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 218
    invoke-super {p0}, Landroid/view/animation/Animation;->reset()V

    .line 220
    iget-object v0, p0, Llenovo/design/widget/FloatingActionButtonEclairMr1$BaseShadowAnimation;->this$0:Llenovo/design/widget/FloatingActionButtonEclairMr1;

    iget-object v0, v0, Llenovo/design/widget/FloatingActionButtonEclairMr1;->mShadowDrawable:Llenovo/design/widget/ShadowDrawableWrapper;

    invoke-virtual {v0}, Llenovo/design/widget/ShadowDrawableWrapper;->getShadowSize()F

    move-result v0

    iput v0, p0, Llenovo/design/widget/FloatingActionButtonEclairMr1$BaseShadowAnimation;->mShadowSizeStart:F

    .line 221
    invoke-virtual {p0}, Llenovo/design/widget/FloatingActionButtonEclairMr1$BaseShadowAnimation;->getTargetShadowSize()F

    move-result v0

    iget v1, p0, Llenovo/design/widget/FloatingActionButtonEclairMr1$BaseShadowAnimation;->mShadowSizeStart:F

    sub-float/2addr v0, v1

    iput v0, p0, Llenovo/design/widget/FloatingActionButtonEclairMr1$BaseShadowAnimation;->mShadowSizeDiff:F

    .line 222
    return-void
.end method