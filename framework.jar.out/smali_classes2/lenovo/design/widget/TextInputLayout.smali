.class public Llenovo/design/widget/TextInputLayout;
.super Landroid/widget/LinearLayout;
.source "TextInputLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llenovo/design/widget/TextInputLayout$TextInputAccessibilityDelegate;
    }
.end annotation


# static fields
.field private static final ANIMATION_DURATION:I = 0xc8


# instance fields
.field private mAnimator:Llenovo/design/widget/ValueAnimatorCompat;

.field private final mCollapsingTextHelper:Llenovo/design/widget/CollapsingTextHelper;

.field private mDefaultTextColor:Landroid/content/res/ColorStateList;

.field private mEditText:Landroid/widget/EditText;

.field private mErrorEnabled:Z

.field private mErrorTextAppearance:I

.field private mErrorView:Landroid/widget/TextView;

.field private mFocusedTextColor:Landroid/content/res/ColorStateList;

.field private mHint:Ljava/lang/CharSequence;

.field private mHintAnimationEnabled:Z

.field private mTmpPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 76
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Llenovo/design/widget/TextInputLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 77
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 80
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Llenovo/design/widget/TextInputLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 81
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v8, 0x2

    const/4 v7, -0x1

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 85
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 70
    new-instance v3, Llenovo/design/widget/CollapsingTextHelper;

    invoke-direct {v3, p0}, Llenovo/design/widget/CollapsingTextHelper;-><init>(Landroid/view/View;)V

    iput-object v3, p0, Llenovo/design/widget/TextInputLayout;->mCollapsingTextHelper:Llenovo/design/widget/CollapsingTextHelper;

    .line 87
    invoke-virtual {p0, v6}, Llenovo/design/widget/TextInputLayout;->setOrientation(I)V

    .line 88
    invoke-virtual {p0, v5}, Llenovo/design/widget/TextInputLayout;->setWillNotDraw(Z)V

    .line 89
    invoke-virtual {p0, v6}, Llenovo/design/widget/TextInputLayout;->setAddStatesFromChildren(Z)V

    .line 91
    iget-object v3, p0, Llenovo/design/widget/TextInputLayout;->mCollapsingTextHelper:Llenovo/design/widget/CollapsingTextHelper;

    sget-object v4, Llenovo/design/widget/AnimationUtils;->FAST_OUT_SLOW_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v3, v4}, Llenovo/design/widget/CollapsingTextHelper;->setTextSizeInterpolator(Landroid/view/animation/Interpolator;)V

    .line 92
    iget-object v3, p0, Llenovo/design/widget/TextInputLayout;->mCollapsingTextHelper:Llenovo/design/widget/CollapsingTextHelper;

    new-instance v4, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v4}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v3, v4}, Llenovo/design/widget/CollapsingTextHelper;->setPositionInterpolator(Landroid/view/animation/Interpolator;)V

    .line 93
    iget-object v3, p0, Llenovo/design/widget/TextInputLayout;->mCollapsingTextHelper:Llenovo/design/widget/CollapsingTextHelper;

    const v4, 0x800033

    invoke-virtual {v3, v4}, Llenovo/design/widget/CollapsingTextHelper;->setCollapsedTextGravity(I)V

    .line 95
    sget-object v3, Lcom/lenovo/internal/R$styleable;->TextInputLayout:[I

    const v4, 0x90302ec

    invoke-virtual {p1, p2, v3, p3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 97
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, p0, Llenovo/design/widget/TextInputLayout;->mHint:Ljava/lang/CharSequence;

    .line 98
    const/16 v3, 0x9

    invoke-virtual {v0, v3, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Llenovo/design/widget/TextInputLayout;->mHintAnimationEnabled:Z

    .line 101
    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 102
    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    iput-object v3, p0, Llenovo/design/widget/TextInputLayout;->mFocusedTextColor:Landroid/content/res/ColorStateList;

    iput-object v3, p0, Llenovo/design/widget/TextInputLayout;->mDefaultTextColor:Landroid/content/res/ColorStateList;

    .line 106
    :cond_0
    invoke-virtual {v0, v8, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 108
    .local v2, "hintAppearance":I
    if-eq v2, v7, :cond_1

    .line 109
    invoke-virtual {v0, v8, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    invoke-virtual {p0, v3}, Llenovo/design/widget/TextInputLayout;->setHintTextAppearance(I)V

    .line 113
    :cond_1
    const/4 v3, 0x4

    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Llenovo/design/widget/TextInputLayout;->mErrorTextAppearance:I

    .line 114
    const/4 v3, 0x3

    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    .line 115
    .local v1, "errorEnabled":Z
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 117
    invoke-virtual {p0, v1}, Llenovo/design/widget/TextInputLayout;->setErrorEnabled(Z)V

    .line 119
    invoke-virtual {p0}, Llenovo/design/widget/TextInputLayout;->getImportantForAccessibility()I

    move-result v3

    if-nez v3, :cond_2

    .line 122
    invoke-virtual {p0, v6}, Llenovo/design/widget/TextInputLayout;->setImportantForAccessibility(I)V

    .line 126
    :cond_2
    new-instance v3, Llenovo/design/widget/TextInputLayout$TextInputAccessibilityDelegate;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Llenovo/design/widget/TextInputLayout$TextInputAccessibilityDelegate;-><init>(Llenovo/design/widget/TextInputLayout;Llenovo/design/widget/TextInputLayout$1;)V

    invoke-virtual {p0, v3}, Llenovo/design/widget/TextInputLayout;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 127
    return-void
.end method

.method static synthetic access$100(Llenovo/design/widget/TextInputLayout;Z)V
    .locals 0
    .param p0, "x0"    # Llenovo/design/widget/TextInputLayout;
    .param p1, "x1"    # Z

    .prologue
    .line 54
    invoke-direct {p0, p1}, Llenovo/design/widget/TextInputLayout;->updateLabelVisibility(Z)V

    return-void
.end method

.method static synthetic access$200(Llenovo/design/widget/TextInputLayout;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Llenovo/design/widget/TextInputLayout;

    .prologue
    .line 54
    iget-object v0, p0, Llenovo/design/widget/TextInputLayout;->mErrorView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300(Llenovo/design/widget/TextInputLayout;)Llenovo/design/widget/CollapsingTextHelper;
    .locals 1
    .param p0, "x0"    # Llenovo/design/widget/TextInputLayout;

    .prologue
    .line 54
    iget-object v0, p0, Llenovo/design/widget/TextInputLayout;->mCollapsingTextHelper:Llenovo/design/widget/CollapsingTextHelper;

    return-object v0
.end method

.method static synthetic access$400(Llenovo/design/widget/TextInputLayout;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Llenovo/design/widget/TextInputLayout;

    .prologue
    .line 54
    iget-object v0, p0, Llenovo/design/widget/TextInputLayout;->mEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method private animateToExpansionFraction(F)V
    .locals 2
    .param p1, "target"    # F

    .prologue
    .line 480
    iget-object v0, p0, Llenovo/design/widget/TextInputLayout;->mCollapsingTextHelper:Llenovo/design/widget/CollapsingTextHelper;

    invoke-virtual {v0}, Llenovo/design/widget/CollapsingTextHelper;->getExpansionFraction()F

    move-result v0

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    .line 496
    :goto_0
    return-void

    .line 483
    :cond_0
    iget-object v0, p0, Llenovo/design/widget/TextInputLayout;->mAnimator:Llenovo/design/widget/ValueAnimatorCompat;

    if-nez v0, :cond_1

    .line 484
    invoke-static {}, Llenovo/design/widget/ViewUtils;->createAnimator()Llenovo/design/widget/ValueAnimatorCompat;

    move-result-object v0

    iput-object v0, p0, Llenovo/design/widget/TextInputLayout;->mAnimator:Llenovo/design/widget/ValueAnimatorCompat;

    .line 485
    iget-object v0, p0, Llenovo/design/widget/TextInputLayout;->mAnimator:Llenovo/design/widget/ValueAnimatorCompat;

    sget-object v1, Llenovo/design/widget/AnimationUtils;->LINEAR_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Llenovo/design/widget/ValueAnimatorCompat;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 486
    iget-object v0, p0, Llenovo/design/widget/TextInputLayout;->mAnimator:Llenovo/design/widget/ValueAnimatorCompat;

    const/16 v1, 0xc8

    invoke-virtual {v0, v1}, Llenovo/design/widget/ValueAnimatorCompat;->setDuration(I)V

    .line 487
    iget-object v0, p0, Llenovo/design/widget/TextInputLayout;->mAnimator:Llenovo/design/widget/ValueAnimatorCompat;

    new-instance v1, Llenovo/design/widget/TextInputLayout$4;

    invoke-direct {v1, p0}, Llenovo/design/widget/TextInputLayout$4;-><init>(Llenovo/design/widget/TextInputLayout;)V

    invoke-virtual {v0, v1}, Llenovo/design/widget/ValueAnimatorCompat;->setUpdateListener(Llenovo/design/widget/ValueAnimatorCompat$AnimatorUpdateListener;)V

    .line 494
    :cond_1
    iget-object v0, p0, Llenovo/design/widget/TextInputLayout;->mAnimator:Llenovo/design/widget/ValueAnimatorCompat;

    iget-object v1, p0, Llenovo/design/widget/TextInputLayout;->mCollapsingTextHelper:Llenovo/design/widget/CollapsingTextHelper;

    invoke-virtual {v1}, Llenovo/design/widget/CollapsingTextHelper;->getExpansionFraction()F

    move-result v1

    invoke-virtual {v0, v1, p1}, Llenovo/design/widget/ValueAnimatorCompat;->setFloatValues(FF)V

    .line 495
    iget-object v0, p0, Llenovo/design/widget/TextInputLayout;->mAnimator:Llenovo/design/widget/ValueAnimatorCompat;

    invoke-virtual {v0}, Llenovo/design/widget/ValueAnimatorCompat;->start()V

    goto :goto_0
.end method

.method private static arrayContains([II)Z
    .locals 5
    .param p0, "array"    # [I
    .param p1, "value"    # I

    .prologue
    .line 545
    move-object v0, p0

    .local v0, "arr$":[I
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget v3, v0, v1

    .line 546
    .local v3, "v":I
    if-ne v3, p1, :cond_0

    .line 547
    const/4 v4, 0x1

    .line 550
    .end local v3    # "v":I
    :goto_1
    return v4

    .line 545
    .restart local v3    # "v":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 550
    .end local v3    # "v":I
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private collapseHint(Z)V
    .locals 2
    .param p1, "animate"    # Z

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 458
    iget-object v0, p0, Llenovo/design/widget/TextInputLayout;->mAnimator:Llenovo/design/widget/ValueAnimatorCompat;

    if-eqz v0, :cond_0

    iget-object v0, p0, Llenovo/design/widget/TextInputLayout;->mAnimator:Llenovo/design/widget/ValueAnimatorCompat;

    invoke-virtual {v0}, Llenovo/design/widget/ValueAnimatorCompat;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 459
    iget-object v0, p0, Llenovo/design/widget/TextInputLayout;->mAnimator:Llenovo/design/widget/ValueAnimatorCompat;

    invoke-virtual {v0}, Llenovo/design/widget/ValueAnimatorCompat;->cancel()V

    .line 461
    :cond_0
    if-eqz p1, :cond_1

    iget-boolean v0, p0, Llenovo/design/widget/TextInputLayout;->mHintAnimationEnabled:Z

    if-eqz v0, :cond_1

    .line 462
    invoke-direct {p0, v1}, Llenovo/design/widget/TextInputLayout;->animateToExpansionFraction(F)V

    .line 466
    :goto_0
    return-void

    .line 464
    :cond_1
    iget-object v0, p0, Llenovo/design/widget/TextInputLayout;->mCollapsingTextHelper:Llenovo/design/widget/CollapsingTextHelper;

    invoke-virtual {v0, v1}, Llenovo/design/widget/CollapsingTextHelper;->setExpansionFraction(F)V

    goto :goto_0
.end method

.method private expandHint(Z)V
    .locals 2
    .param p1, "animate"    # Z

    .prologue
    const/4 v1, 0x0

    .line 469
    iget-object v0, p0, Llenovo/design/widget/TextInputLayout;->mAnimator:Llenovo/design/widget/ValueAnimatorCompat;

    if-eqz v0, :cond_0

    iget-object v0, p0, Llenovo/design/widget/TextInputLayout;->mAnimator:Llenovo/design/widget/ValueAnimatorCompat;

    invoke-virtual {v0}, Llenovo/design/widget/ValueAnimatorCompat;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 470
    iget-object v0, p0, Llenovo/design/widget/TextInputLayout;->mAnimator:Llenovo/design/widget/ValueAnimatorCompat;

    invoke-virtual {v0}, Llenovo/design/widget/ValueAnimatorCompat;->cancel()V

    .line 472
    :cond_0
    if-eqz p1, :cond_1

    iget-boolean v0, p0, Llenovo/design/widget/TextInputLayout;->mHintAnimationEnabled:Z

    if-eqz v0, :cond_1

    .line 473
    invoke-direct {p0, v1}, Llenovo/design/widget/TextInputLayout;->animateToExpansionFraction(F)V

    .line 477
    :goto_0
    return-void

    .line 475
    :cond_1
    iget-object v0, p0, Llenovo/design/widget/TextInputLayout;->mCollapsingTextHelper:Llenovo/design/widget/CollapsingTextHelper;

    invoke-virtual {v0, v1}, Llenovo/design/widget/CollapsingTextHelper;->setExpansionFraction(F)V

    goto :goto_0
.end method

.method private getThemeAttrColor(I)I
    .locals 3
    .param p1, "attr"    # I

    .prologue
    .line 499
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 500
    .local v0, "tv":Landroid/util/TypedValue;
    invoke-virtual {p0}, Llenovo/design/widget/TextInputLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 501
    iget v1, v0, Landroid/util/TypedValue;->data:I

    .line 503
    :goto_0
    return v1

    :cond_0
    const v1, -0xff01

    goto :goto_0
.end method

.method private setEditText(Landroid/widget/EditText;)V
    .locals 5
    .param p1, "editText"    # Landroid/widget/EditText;

    .prologue
    const/4 v4, 0x0

    .line 151
    iget-object v0, p0, Llenovo/design/widget/TextInputLayout;->mEditText:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 152
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "We already have an EditText, can only have one"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 154
    :cond_0
    iput-object p1, p0, Llenovo/design/widget/TextInputLayout;->mEditText:Landroid/widget/EditText;

    .line 157
    iget-object v0, p0, Llenovo/design/widget/TextInputLayout;->mCollapsingTextHelper:Llenovo/design/widget/CollapsingTextHelper;

    iget-object v1, p0, Llenovo/design/widget/TextInputLayout;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Llenovo/design/widget/CollapsingTextHelper;->setTypeface(Landroid/graphics/Typeface;)V

    .line 158
    iget-object v0, p0, Llenovo/design/widget/TextInputLayout;->mCollapsingTextHelper:Llenovo/design/widget/CollapsingTextHelper;

    iget-object v1, p0, Llenovo/design/widget/TextInputLayout;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getTextSize()F

    move-result v1

    invoke-virtual {v0, v1}, Llenovo/design/widget/CollapsingTextHelper;->setExpandedTextSize(F)V

    .line 159
    iget-object v0, p0, Llenovo/design/widget/TextInputLayout;->mCollapsingTextHelper:Llenovo/design/widget/CollapsingTextHelper;

    iget-object v1, p0, Llenovo/design/widget/TextInputLayout;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getGravity()I

    move-result v1

    invoke-virtual {v0, v1}, Llenovo/design/widget/CollapsingTextHelper;->setExpandedTextGravity(I)V

    .line 162
    iget-object v0, p0, Llenovo/design/widget/TextInputLayout;->mEditText:Landroid/widget/EditText;

    new-instance v1, Llenovo/design/widget/TextInputLayout$1;

    invoke-direct {v1, p0}, Llenovo/design/widget/TextInputLayout$1;-><init>(Llenovo/design/widget/TextInputLayout;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 176
    iget-object v0, p0, Llenovo/design/widget/TextInputLayout;->mDefaultTextColor:Landroid/content/res/ColorStateList;

    if-nez v0, :cond_1

    .line 177
    iget-object v0, p0, Llenovo/design/widget/TextInputLayout;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getHintTextColors()Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Llenovo/design/widget/TextInputLayout;->mDefaultTextColor:Landroid/content/res/ColorStateList;

    .line 181
    :cond_1
    iget-object v0, p0, Llenovo/design/widget/TextInputLayout;->mHint:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 182
    iget-object v0, p0, Llenovo/design/widget/TextInputLayout;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getHint()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Llenovo/design/widget/TextInputLayout;->setHint(Ljava/lang/CharSequence;)V

    .line 184
    iget-object v0, p0, Llenovo/design/widget/TextInputLayout;->mEditText:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 187
    :cond_2
    iget-object v0, p0, Llenovo/design/widget/TextInputLayout;->mErrorView:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    .line 189
    iget-object v0, p0, Llenovo/design/widget/TextInputLayout;->mErrorView:Landroid/widget/TextView;

    iget-object v1, p0, Llenovo/design/widget/TextInputLayout;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getPaddingStart()I

    move-result v1

    iget-object v2, p0, Llenovo/design/widget/TextInputLayout;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getPaddingEnd()I

    move-result v2

    iget-object v3, p0, Llenovo/design/widget/TextInputLayout;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getPaddingBottom()I

    move-result v3

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/widget/TextView;->setPaddingRelative(IIII)V

    .line 194
    :cond_3
    invoke-direct {p0, v4}, Llenovo/design/widget/TextInputLayout;->updateLabelVisibility(Z)V

    .line 195
    return-void
.end method

.method private updateEditTextMargin(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/LinearLayout$LayoutParams;
    .locals 3
    .param p1, "lp"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 200
    instance-of v1, p1, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v1, :cond_1

    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    .end local p1    # "lp":Landroid/view/ViewGroup$LayoutParams;
    move-object v0, p1

    .line 202
    .local v0, "llp":Landroid/widget/LinearLayout$LayoutParams;
    :goto_0
    iget-object v1, p0, Llenovo/design/widget/TextInputLayout;->mTmpPaint:Landroid/graphics/Paint;

    if-nez v1, :cond_0

    .line 203
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Llenovo/design/widget/TextInputLayout;->mTmpPaint:Landroid/graphics/Paint;

    .line 205
    :cond_0
    iget-object v1, p0, Llenovo/design/widget/TextInputLayout;->mTmpPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Llenovo/design/widget/TextInputLayout;->mCollapsingTextHelper:Llenovo/design/widget/CollapsingTextHelper;

    invoke-virtual {v2}, Llenovo/design/widget/CollapsingTextHelper;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 206
    iget-object v1, p0, Llenovo/design/widget/TextInputLayout;->mTmpPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Llenovo/design/widget/TextInputLayout;->mCollapsingTextHelper:Llenovo/design/widget/CollapsingTextHelper;

    invoke-virtual {v2}, Llenovo/design/widget/CollapsingTextHelper;->getCollapsedTextSize()F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 207
    iget-object v1, p0, Llenovo/design/widget/TextInputLayout;->mTmpPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->ascent()F

    move-result v1

    neg-float v1, v1

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 209
    return-object v0

    .line 200
    .end local v0    # "llp":Landroid/widget/LinearLayout$LayoutParams;
    .restart local p1    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_1
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method private updateLabelVisibility(Z)V
    .locals 4
    .param p1, "animate"    # Z

    .prologue
    .line 213
    iget-object v2, p0, Llenovo/design/widget/TextInputLayout;->mEditText:Landroid/widget/EditText;

    if-eqz v2, :cond_2

    iget-object v2, p0, Llenovo/design/widget/TextInputLayout;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v0, 0x1

    .line 214
    .local v0, "hasText":Z
    :goto_0
    invoke-virtual {p0}, Llenovo/design/widget/TextInputLayout;->getDrawableState()[I

    move-result-object v2

    const v3, 0x101009c

    invoke-static {v2, v3}, Llenovo/design/widget/TextInputLayout;->arrayContains([II)Z

    move-result v1

    .line 216
    .local v1, "isFocused":Z
    iget-object v2, p0, Llenovo/design/widget/TextInputLayout;->mDefaultTextColor:Landroid/content/res/ColorStateList;

    if-eqz v2, :cond_0

    iget-object v2, p0, Llenovo/design/widget/TextInputLayout;->mFocusedTextColor:Landroid/content/res/ColorStateList;

    if-eqz v2, :cond_0

    .line 217
    iget-object v2, p0, Llenovo/design/widget/TextInputLayout;->mCollapsingTextHelper:Llenovo/design/widget/CollapsingTextHelper;

    iget-object v3, p0, Llenovo/design/widget/TextInputLayout;->mDefaultTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v3}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v3

    invoke-virtual {v2, v3}, Llenovo/design/widget/CollapsingTextHelper;->setExpandedTextColor(I)V

    .line 218
    iget-object v3, p0, Llenovo/design/widget/TextInputLayout;->mCollapsingTextHelper:Llenovo/design/widget/CollapsingTextHelper;

    if-eqz v1, :cond_3

    iget-object v2, p0, Llenovo/design/widget/TextInputLayout;->mFocusedTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v2

    :goto_1
    invoke-virtual {v3, v2}, Llenovo/design/widget/CollapsingTextHelper;->setCollapsedTextColor(I)V

    .line 223
    :cond_0
    if-nez v0, :cond_1

    if-eqz v1, :cond_4

    .line 225
    :cond_1
    invoke-direct {p0, p1}, Llenovo/design/widget/TextInputLayout;->collapseHint(Z)V

    .line 230
    :goto_2
    return-void

    .line 213
    .end local v0    # "hasText":Z
    .end local v1    # "isFocused":Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 218
    .restart local v0    # "hasText":Z
    .restart local v1    # "isFocused":Z
    :cond_3
    iget-object v2, p0, Llenovo/design/widget/TextInputLayout;->mDefaultTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v2

    goto :goto_1

    .line 228
    :cond_4
    invoke-direct {p0, p1}, Llenovo/design/widget/TextInputLayout;->expandHint(Z)V

    goto :goto_2
.end method


# virtual methods
.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 131
    instance-of v0, p1, Landroid/widget/EditText;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 132
    check-cast v0, Landroid/widget/EditText;

    invoke-direct {p0, v0}, Llenovo/design/widget/TextInputLayout;->setEditText(Landroid/widget/EditText;)V

    .line 133
    const/4 v0, 0x0

    invoke-direct {p0, p3}, Llenovo/design/widget/TextInputLayout;->updateEditTextMargin(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-super {p0, p1, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 138
    :goto_0
    return-void

    .line 136
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 425
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->draw(Landroid/graphics/Canvas;)V

    .line 426
    iget-object v0, p0, Llenovo/design/widget/TextInputLayout;->mCollapsingTextHelper:Llenovo/design/widget/CollapsingTextHelper;

    invoke-virtual {v0, p1}, Llenovo/design/widget/CollapsingTextHelper;->draw(Landroid/graphics/Canvas;)V

    .line 427
    return-void
.end method

.method public getEditText()Landroid/widget/EditText;
    .locals 1
    .annotation build Llenovo/annotation/Nullable;
    .end annotation

    .prologue
    .line 237
    iget-object v0, p0, Llenovo/design/widget/TextInputLayout;->mEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method public getError()Ljava/lang/CharSequence;
    .locals 1
    .annotation build Llenovo/annotation/Nullable;
    .end annotation

    .prologue
    .line 393
    iget-boolean v0, p0, Llenovo/design/widget/TextInputLayout;->mErrorEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Llenovo/design/widget/TextInputLayout;->mErrorView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Llenovo/design/widget/TextInputLayout;->mErrorView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 394
    iget-object v0, p0, Llenovo/design/widget/TextInputLayout;->mErrorView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 396
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getHint()Ljava/lang/CharSequence;
    .locals 1
    .annotation build Llenovo/annotation/Nullable;
    .end annotation

    .prologue
    .line 259
    iget-object v0, p0, Llenovo/design/widget/TextInputLayout;->mHint:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public isErrorEnabled()Z
    .locals 1

    .prologue
    .line 321
    iget-boolean v0, p0, Llenovo/design/widget/TextInputLayout;->mErrorEnabled:Z

    return v0
.end method

.method public isHintAnimationEnabled()Z
    .locals 1

    .prologue
    .line 408
    iget-boolean v0, p0, Llenovo/design/widget/TextInputLayout;->mHintAnimationEnabled:Z

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 6
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 431
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 433
    iget-object v2, p0, Llenovo/design/widget/TextInputLayout;->mEditText:Landroid/widget/EditText;

    if-eqz v2, :cond_0

    .line 434
    iget-object v2, p0, Llenovo/design/widget/TextInputLayout;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getLeft()I

    move-result v2

    iget-object v3, p0, Llenovo/design/widget/TextInputLayout;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getCompoundPaddingLeft()I

    move-result v3

    add-int v0, v2, v3

    .line 435
    .local v0, "l":I
    iget-object v2, p0, Llenovo/design/widget/TextInputLayout;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getRight()I

    move-result v2

    iget-object v3, p0, Llenovo/design/widget/TextInputLayout;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getCompoundPaddingRight()I

    move-result v3

    sub-int v1, v2, v3

    .line 437
    .local v1, "r":I
    iget-object v2, p0, Llenovo/design/widget/TextInputLayout;->mCollapsingTextHelper:Llenovo/design/widget/CollapsingTextHelper;

    iget-object v3, p0, Llenovo/design/widget/TextInputLayout;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getTop()I

    move-result v3

    iget-object v4, p0, Llenovo/design/widget/TextInputLayout;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getCompoundPaddingTop()I

    move-result v4

    add-int/2addr v3, v4

    iget-object v4, p0, Llenovo/design/widget/TextInputLayout;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getBottom()I

    move-result v4

    iget-object v5, p0, Llenovo/design/widget/TextInputLayout;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getCompoundPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {v2, v0, v3, v1, v4}, Llenovo/design/widget/CollapsingTextHelper;->setExpandedBounds(IIII)V

    .line 443
    iget-object v2, p0, Llenovo/design/widget/TextInputLayout;->mCollapsingTextHelper:Llenovo/design/widget/CollapsingTextHelper;

    invoke-virtual {p0}, Llenovo/design/widget/TextInputLayout;->getPaddingTop()I

    move-result v3

    sub-int v4, p5, p3

    invoke-virtual {p0}, Llenovo/design/widget/TextInputLayout;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {v2, v0, v3, v1, v4}, Llenovo/design/widget/CollapsingTextHelper;->setCollapsedBounds(IIII)V

    .line 446
    iget-object v2, p0, Llenovo/design/widget/TextInputLayout;->mCollapsingTextHelper:Llenovo/design/widget/CollapsingTextHelper;

    invoke-virtual {v2}, Llenovo/design/widget/CollapsingTextHelper;->recalculate()V

    .line 448
    .end local v0    # "l":I
    .end local v1    # "r":I
    :cond_0
    return-void
.end method

.method public refreshDrawableState()V
    .locals 1

    .prologue
    .line 452
    invoke-super {p0}, Landroid/widget/LinearLayout;->refreshDrawableState()V

    .line 454
    invoke-virtual {p0}, Llenovo/design/widget/TextInputLayout;->isLaidOut()Z

    move-result v0

    invoke-direct {p0, v0}, Llenovo/design/widget/TextInputLayout;->updateLabelVisibility(Z)V

    .line 455
    return-void
.end method

.method public setError(Ljava/lang/CharSequence;)V
    .locals 4
    .param p1, "error"    # Ljava/lang/CharSequence;
        .annotation build Llenovo/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const-wide/16 v2, 0xc8

    const/4 v1, 0x0

    .line 336
    iget-boolean v0, p0, Llenovo/design/widget/TextInputLayout;->mErrorEnabled:Z

    if-nez v0, :cond_1

    .line 337
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 382
    :goto_0
    return-void

    .line 342
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Llenovo/design/widget/TextInputLayout;->setErrorEnabled(Z)V

    .line 345
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 346
    iget-object v0, p0, Llenovo/design/widget/TextInputLayout;->mErrorView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 347
    iget-object v0, p0, Llenovo/design/widget/TextInputLayout;->mErrorView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 348
    iget-object v0, p0, Llenovo/design/widget/TextInputLayout;->mErrorView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Llenovo/design/widget/AnimationUtils;->FAST_OUT_SLOW_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Llenovo/design/widget/TextInputLayout$2;

    invoke-direct {v1, p0}, Llenovo/design/widget/TextInputLayout$2;-><init>(Llenovo/design/widget/TextInputLayout;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 361
    iget-object v0, p0, Llenovo/design/widget/TextInputLayout;->mEditText:Landroid/widget/EditText;

    iget-object v1, p0, Llenovo/design/widget/TextInputLayout;->mErrorView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v1

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 381
    :cond_2
    :goto_1
    const/16 v0, 0x800

    invoke-virtual {p0, v0}, Llenovo/design/widget/TextInputLayout;->sendAccessibilityEvent(I)V

    goto :goto_0

    .line 364
    :cond_3
    iget-object v0, p0, Llenovo/design/widget/TextInputLayout;->mErrorView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 365
    iget-object v0, p0, Llenovo/design/widget/TextInputLayout;->mErrorView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Llenovo/design/widget/AnimationUtils;->FAST_OUT_SLOW_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Llenovo/design/widget/TextInputLayout$3;

    invoke-direct {v1, p0}, Llenovo/design/widget/TextInputLayout$3;-><init>(Llenovo/design/widget/TextInputLayout;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_1
.end method

.method public setErrorEnabled(Z)V
    .locals 5
    .param p1, "enabled"    # Z

    .prologue
    .line 289
    iget-boolean v0, p0, Llenovo/design/widget/TextInputLayout;->mErrorEnabled:Z

    if-eq v0, p1, :cond_2

    .line 290
    iget-object v0, p0, Llenovo/design/widget/TextInputLayout;->mErrorView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 291
    iget-object v0, p0, Llenovo/design/widget/TextInputLayout;->mErrorView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 294
    :cond_0
    if-eqz p1, :cond_3

    .line 295
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Llenovo/design/widget/TextInputLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Llenovo/design/widget/TextInputLayout;->mErrorView:Landroid/widget/TextView;

    .line 296
    iget-object v0, p0, Llenovo/design/widget/TextInputLayout;->mErrorView:Landroid/widget/TextView;

    invoke-virtual {p0}, Llenovo/design/widget/TextInputLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Llenovo/design/widget/TextInputLayout;->mErrorTextAppearance:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 297
    iget-object v0, p0, Llenovo/design/widget/TextInputLayout;->mErrorView:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 298
    iget-object v0, p0, Llenovo/design/widget/TextInputLayout;->mErrorView:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Llenovo/design/widget/TextInputLayout;->addView(Landroid/view/View;)V

    .line 300
    iget-object v0, p0, Llenovo/design/widget/TextInputLayout;->mEditText:Landroid/widget/EditText;

    if-eqz v0, :cond_1

    .line 302
    iget-object v0, p0, Llenovo/design/widget/TextInputLayout;->mErrorView:Landroid/widget/TextView;

    iget-object v1, p0, Llenovo/design/widget/TextInputLayout;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getPaddingStart()I

    move-result v1

    const/4 v2, 0x0

    iget-object v3, p0, Llenovo/design/widget/TextInputLayout;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getPaddingEnd()I

    move-result v3

    iget-object v4, p0, Llenovo/design/widget/TextInputLayout;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getPaddingBottom()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setPaddingRelative(IIII)V

    .line 309
    :cond_1
    :goto_0
    iput-boolean p1, p0, Llenovo/design/widget/TextInputLayout;->mErrorEnabled:Z

    .line 311
    :cond_2
    return-void

    .line 306
    :cond_3
    iget-object v0, p0, Llenovo/design/widget/TextInputLayout;->mErrorView:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Llenovo/design/widget/TextInputLayout;->removeView(Landroid/view/View;)V

    .line 307
    const/4 v0, 0x0

    iput-object v0, p0, Llenovo/design/widget/TextInputLayout;->mErrorView:Landroid/widget/TextView;

    goto :goto_0
.end method

.method public setHint(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "hint"    # Ljava/lang/CharSequence;
        .annotation build Llenovo/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 246
    iput-object p1, p0, Llenovo/design/widget/TextInputLayout;->mHint:Ljava/lang/CharSequence;

    .line 247
    iget-object v0, p0, Llenovo/design/widget/TextInputLayout;->mCollapsingTextHelper:Llenovo/design/widget/CollapsingTextHelper;

    invoke-virtual {v0, p1}, Llenovo/design/widget/CollapsingTextHelper;->setText(Ljava/lang/CharSequence;)V

    .line 249
    const/16 v0, 0x800

    invoke-virtual {p0, v0}, Llenovo/design/widget/TextInputLayout;->sendAccessibilityEvent(I)V

    .line 250
    return-void
.end method

.method public setHintAnimationEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 420
    iput-boolean p1, p0, Llenovo/design/widget/TextInputLayout;->mHintAnimationEnabled:Z

    .line 421
    return-void
.end method

.method public setHintTextAppearance(I)V
    .locals 2
    .param p1, "resId"    # I
        .annotation build Llenovo/annotation/StyleRes;
        .end annotation
    .end param

    .prologue
    .line 268
    iget-object v1, p0, Llenovo/design/widget/TextInputLayout;->mCollapsingTextHelper:Llenovo/design/widget/CollapsingTextHelper;

    invoke-virtual {v1, p1}, Llenovo/design/widget/CollapsingTextHelper;->setCollapsedTextAppearance(I)V

    .line 269
    iget-object v1, p0, Llenovo/design/widget/TextInputLayout;->mCollapsingTextHelper:Llenovo/design/widget/CollapsingTextHelper;

    invoke-virtual {v1}, Llenovo/design/widget/CollapsingTextHelper;->getCollapsedTextColor()I

    move-result v1

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Llenovo/design/widget/TextInputLayout;->mFocusedTextColor:Landroid/content/res/ColorStateList;

    .line 271
    iget-object v1, p0, Llenovo/design/widget/TextInputLayout;->mEditText:Landroid/widget/EditText;

    if-eqz v1, :cond_0

    .line 272
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Llenovo/design/widget/TextInputLayout;->updateLabelVisibility(Z)V

    .line 275
    iget-object v1, p0, Llenovo/design/widget/TextInputLayout;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-direct {p0, v1}, Llenovo/design/widget/TextInputLayout;->updateEditTextMargin(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    .line 276
    .local v0, "lp":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v1, p0, Llenovo/design/widget/TextInputLayout;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 277
    iget-object v1, p0, Llenovo/design/widget/TextInputLayout;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestLayout()V

    .line 279
    .end local v0    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_0
    return-void
.end method

.method public setTypeface(Landroid/graphics/Typeface;)V
    .locals 1
    .param p1, "typeface"    # Landroid/graphics/Typeface;
        .annotation build Llenovo/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 146
    iget-object v0, p0, Llenovo/design/widget/TextInputLayout;->mCollapsingTextHelper:Llenovo/design/widget/CollapsingTextHelper;

    invoke-virtual {v0, p1}, Llenovo/design/widget/CollapsingTextHelper;->setTypeface(Landroid/graphics/Typeface;)V

    .line 147
    return-void
.end method
