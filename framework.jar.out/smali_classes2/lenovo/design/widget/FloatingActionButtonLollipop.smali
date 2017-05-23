.class Llenovo/design/widget/FloatingActionButtonLollipop;
.super Llenovo/design/widget/FloatingActionButtonHoneycombMr1;
.source "FloatingActionButtonLollipop.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation


# instance fields
.field private mBorderDrawable:Landroid/graphics/drawable/Drawable;

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field private mRippleDrawable:Landroid/graphics/drawable/RippleDrawable;

.field private mShapeDrawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method constructor <init>(Landroid/view/View;Llenovo/design/widget/ShadowViewDelegate;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "shadowViewDelegate"    # Llenovo/design/widget/ShadowViewDelegate;

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Llenovo/design/widget/FloatingActionButtonHoneycombMr1;-><init>(Landroid/view/View;Llenovo/design/widget/ShadowViewDelegate;)V

    .line 45
    invoke-virtual {p1}, Landroid/view/View;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 46
    iget-object v0, p0, Llenovo/design/widget/FloatingActionButtonLollipop;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x10c000d

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Llenovo/design/widget/FloatingActionButtonLollipop;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 49
    :cond_0
    return-void
.end method

.method private setupAnimator(Landroid/animation/Animator;)Landroid/animation/Animator;
    .locals 1
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 127
    iget-object v0, p0, Llenovo/design/widget/FloatingActionButtonLollipop;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 128
    return-object p1
.end method


# virtual methods
.method jumpDrawableToCurrentState()V
    .locals 0

    .prologue
    .line 124
    return-void
.end method

.method newCircularDrawable()Llenovo/design/widget/CircularBorderDrawable;
    .locals 1

    .prologue
    .line 133
    new-instance v0, Llenovo/design/widget/CircularBorderDrawableLollipop;

    invoke-direct {v0}, Llenovo/design/widget/CircularBorderDrawableLollipop;-><init>()V

    return-object v0
.end method

.method onDrawableStateChanged([I)V
    .locals 0
    .param p1, "state"    # [I

    .prologue
    .line 119
    return-void
.end method

.method setBackgroundDrawable(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;II)V
    .locals 6
    .param p1, "originalBackground"    # Landroid/graphics/drawable/Drawable;
    .param p2, "backgroundTint"    # Landroid/content/res/ColorStateList;
    .param p3, "backgroundTintMode"    # Landroid/graphics/PorterDuff$Mode;
    .param p4, "rippleColor"    # I
    .param p5, "borderWidth"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 55
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Llenovo/design/widget/FloatingActionButtonLollipop;->mShapeDrawable:Landroid/graphics/drawable/Drawable;

    .line 56
    iget-object v1, p0, Llenovo/design/widget/FloatingActionButtonLollipop;->mShapeDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p2}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 57
    if-eqz p3, :cond_0

    .line 58
    iget-object v1, p0, Llenovo/design/widget/FloatingActionButtonLollipop;->mShapeDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p3}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 62
    :cond_0
    if-lez p5, :cond_1

    .line 63
    invoke-virtual {p0, p5, p2}, Llenovo/design/widget/FloatingActionButtonLollipop;->createBorderDrawable(ILandroid/content/res/ColorStateList;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Llenovo/design/widget/FloatingActionButtonLollipop;->mBorderDrawable:Landroid/graphics/drawable/Drawable;

    .line 64
    new-instance v0, Landroid/graphics/drawable/LayerDrawable;

    const/4 v1, 0x2

    new-array v1, v1, [Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Llenovo/design/widget/FloatingActionButtonLollipop;->mBorderDrawable:Landroid/graphics/drawable/Drawable;

    aput-object v2, v1, v4

    const/4 v2, 0x1

    iget-object v3, p0, Llenovo/design/widget/FloatingActionButtonLollipop;->mShapeDrawable:Landroid/graphics/drawable/Drawable;

    aput-object v3, v1, v2

    invoke-direct {v0, v1}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 70
    .local v0, "rippleContent":Landroid/graphics/drawable/Drawable;
    :goto_0
    new-instance v1, Landroid/graphics/drawable/RippleDrawable;

    invoke-static {p4}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-direct {v1, v2, v0, v5}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iput-object v1, p0, Llenovo/design/widget/FloatingActionButtonLollipop;->mRippleDrawable:Landroid/graphics/drawable/RippleDrawable;

    .line 73
    iget-object v1, p0, Llenovo/design/widget/FloatingActionButtonLollipop;->mShadowViewDelegate:Llenovo/design/widget/ShadowViewDelegate;

    iget-object v2, p0, Llenovo/design/widget/FloatingActionButtonLollipop;->mRippleDrawable:Landroid/graphics/drawable/RippleDrawable;

    invoke-interface {v1, v2}, Llenovo/design/widget/ShadowViewDelegate;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 74
    iget-object v1, p0, Llenovo/design/widget/FloatingActionButtonLollipop;->mShadowViewDelegate:Llenovo/design/widget/ShadowViewDelegate;

    invoke-interface {v1, v4, v4, v4, v4}, Llenovo/design/widget/ShadowViewDelegate;->setShadowPadding(IIII)V

    .line 75
    return-void

    .line 66
    .end local v0    # "rippleContent":Landroid/graphics/drawable/Drawable;
    :cond_1
    iput-object v5, p0, Llenovo/design/widget/FloatingActionButtonLollipop;->mBorderDrawable:Landroid/graphics/drawable/Drawable;

    .line 67
    iget-object v0, p0, Llenovo/design/widget/FloatingActionButtonLollipop;->mShapeDrawable:Landroid/graphics/drawable/Drawable;

    .restart local v0    # "rippleContent":Landroid/graphics/drawable/Drawable;
    goto :goto_0
.end method

.method setBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "tint"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 79
    iget-object v0, p0, Llenovo/design/widget/FloatingActionButtonLollipop;->mShapeDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 80
    iget-object v0, p0, Llenovo/design/widget/FloatingActionButtonLollipop;->mBorderDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Llenovo/design/widget/FloatingActionButtonLollipop;->mBorderDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 83
    :cond_0
    return-void
.end method

.method setBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1
    .param p1, "tintMode"    # Landroid/graphics/PorterDuff$Mode;

    .prologue
    .line 87
    iget-object v0, p0, Llenovo/design/widget/FloatingActionButtonLollipop;->mShapeDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 88
    return-void
.end method

.method public setElevation(F)V
    .locals 1
    .param p1, "elevation"    # F

    .prologue
    .line 97
    iget-object v0, p0, Llenovo/design/widget/FloatingActionButtonLollipop;->mView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setElevation(F)V

    .line 98
    return-void
.end method

.method setPressedTranslationZ(F)V
    .locals 7
    .param p1, "translationZ"    # F

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 102
    new-instance v0, Landroid/animation/StateListAnimator;

    invoke-direct {v0}, Landroid/animation/StateListAnimator;-><init>()V

    .line 105
    .local v0, "stateListAnimator":Landroid/animation/StateListAnimator;
    sget-object v1, Llenovo/design/widget/FloatingActionButtonLollipop;->PRESSED_ENABLED_STATE_SET:[I

    iget-object v2, p0, Llenovo/design/widget/FloatingActionButtonLollipop;->mView:Landroid/view/View;

    const-string v3, "translationZ"

    new-array v4, v5, [F

    aput p1, v4, v6

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-direct {p0, v2}, Llenovo/design/widget/FloatingActionButtonLollipop;->setupAnimator(Landroid/animation/Animator;)Landroid/animation/Animator;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/animation/StateListAnimator;->addState([ILandroid/animation/Animator;)V

    .line 107
    sget-object v1, Llenovo/design/widget/FloatingActionButtonLollipop;->FOCUSED_ENABLED_STATE_SET:[I

    iget-object v2, p0, Llenovo/design/widget/FloatingActionButtonLollipop;->mView:Landroid/view/View;

    const-string v3, "translationZ"

    new-array v4, v5, [F

    aput p1, v4, v6

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-direct {p0, v2}, Llenovo/design/widget/FloatingActionButtonLollipop;->setupAnimator(Landroid/animation/Animator;)Landroid/animation/Animator;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/animation/StateListAnimator;->addState([ILandroid/animation/Animator;)V

    .line 110
    sget-object v1, Llenovo/design/widget/FloatingActionButtonLollipop;->EMPTY_STATE_SET:[I

    iget-object v2, p0, Llenovo/design/widget/FloatingActionButtonLollipop;->mView:Landroid/view/View;

    const-string v3, "translationZ"

    new-array v4, v5, [F

    const/4 v5, 0x0

    aput v5, v4, v6

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-direct {p0, v2}, Llenovo/design/widget/FloatingActionButtonLollipop;->setupAnimator(Landroid/animation/Animator;)Landroid/animation/Animator;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/animation/StateListAnimator;->addState([ILandroid/animation/Animator;)V

    .line 113
    iget-object v1, p0, Llenovo/design/widget/FloatingActionButtonLollipop;->mView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setStateListAnimator(Landroid/animation/StateListAnimator;)V

    .line 114
    return-void
.end method

.method setRippleColor(I)V
    .locals 2
    .param p1, "rippleColor"    # I

    .prologue
    .line 92
    iget-object v0, p0, Llenovo/design/widget/FloatingActionButtonLollipop;->mRippleDrawable:Landroid/graphics/drawable/RippleDrawable;

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/RippleDrawable;->setColor(Landroid/content/res/ColorStateList;)V

    .line 93
    return-void
.end method
