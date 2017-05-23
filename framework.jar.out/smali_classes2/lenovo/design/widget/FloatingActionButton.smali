.class public Llenovo/design/widget/FloatingActionButton;
.super Landroid/widget/ImageView;
.source "FloatingActionButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llenovo/design/widget/FloatingActionButton$Behavior;
    }
.end annotation

.annotation runtime Llenovo/design/widget/CoordinatorLayout$DefaultBehavior;
    value = Llenovo/design/widget/FloatingActionButton$Behavior;
.end annotation


# static fields
.field private static final SIZE_MINI:I = 0x1

.field private static final SIZE_NORMAL:I


# instance fields
.field private mBackgroundTint:Landroid/content/res/ColorStateList;

.field private mBackgroundTintMode:Landroid/graphics/PorterDuff$Mode;

.field private mBorderWidth:I

.field private mContentPadding:I

.field private final mImpl:Llenovo/design/widget/FloatingActionButtonImpl;

.field private mRippleColor:I

.field private final mShadowPadding:Landroid/graphics/Rect;

.field private mSize:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 75
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Llenovo/design/widget/FloatingActionButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 76
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 79
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Llenovo/design/widget/FloatingActionButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 80
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 83
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 85
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Llenovo/design/widget/FloatingActionButton;->mShadowPadding:Landroid/graphics/Rect;

    .line 87
    sget-object v0, Lcom/lenovo/internal/R$styleable;->FloatingActionButton:[I

    const v2, 0x90302e6

    invoke-virtual {p1, p2, v0, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v6

    .line 90
    .local v6, "a":Landroid/content/res/TypedArray;
    const/4 v0, 0x0

    invoke-virtual {v6, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 91
    .local v1, "background":Landroid/graphics/drawable/Drawable;
    const/4 v0, 0x2

    invoke-virtual {v6, v0}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Llenovo/design/widget/FloatingActionButton;->mBackgroundTint:Landroid/content/res/ColorStateList;

    .line 92
    const/4 v0, 0x3

    const/4 v2, -0x1

    invoke-virtual {v6, v0, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    const/4 v2, 0x0

    invoke-static {v0, v2}, Llenovo/design/widget/FloatingActionButton;->parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    iput-object v0, p0, Llenovo/design/widget/FloatingActionButton;->mBackgroundTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 94
    const/4 v0, 0x4

    const/4 v2, 0x0

    invoke-virtual {v6, v0, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Llenovo/design/widget/FloatingActionButton;->mRippleColor:I

    .line 95
    const/4 v0, 0x5

    const/4 v2, 0x0

    invoke-virtual {v6, v0, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Llenovo/design/widget/FloatingActionButton;->mSize:I

    .line 96
    const/4 v0, 0x7

    const/4 v2, 0x0

    invoke-virtual {v6, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Llenovo/design/widget/FloatingActionButton;->mBorderWidth:I

    .line 97
    const/4 v0, 0x1

    const/4 v2, 0x0

    invoke-virtual {v6, v0, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v8

    .line 98
    .local v8, "elevation":F
    const/4 v0, 0x6

    const/4 v2, 0x0

    invoke-virtual {v6, v0, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v10

    .line 100
    .local v10, "pressedTranslationZ":F
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 102
    new-instance v7, Llenovo/design/widget/FloatingActionButton$1;

    invoke-direct {v7, p0}, Llenovo/design/widget/FloatingActionButton$1;-><init>(Llenovo/design/widget/FloatingActionButton;)V

    .line 122
    .local v7, "delegate":Llenovo/design/widget/ShadowViewDelegate;
    sget v11, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 123
    .local v11, "sdk":I
    const/16 v0, 0x15

    if-lt v11, v0, :cond_0

    .line 124
    new-instance v0, Llenovo/design/widget/FloatingActionButtonLollipop;

    invoke-direct {v0, p0, v7}, Llenovo/design/widget/FloatingActionButtonLollipop;-><init>(Landroid/view/View;Llenovo/design/widget/ShadowViewDelegate;)V

    iput-object v0, p0, Llenovo/design/widget/FloatingActionButton;->mImpl:Llenovo/design/widget/FloatingActionButtonImpl;

    .line 131
    :goto_0
    invoke-virtual {p0}, Llenovo/design/widget/FloatingActionButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x908003e

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v9, v0

    .line 133
    .local v9, "maxContentSize":I
    invoke-virtual {p0}, Llenovo/design/widget/FloatingActionButton;->getSizeDimension()I

    move-result v0

    sub-int/2addr v0, v9

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Llenovo/design/widget/FloatingActionButton;->mContentPadding:I

    .line 135
    iget-object v0, p0, Llenovo/design/widget/FloatingActionButton;->mImpl:Llenovo/design/widget/FloatingActionButtonImpl;

    iget-object v2, p0, Llenovo/design/widget/FloatingActionButton;->mBackgroundTint:Landroid/content/res/ColorStateList;

    iget-object v3, p0, Llenovo/design/widget/FloatingActionButton;->mBackgroundTintMode:Landroid/graphics/PorterDuff$Mode;

    iget v4, p0, Llenovo/design/widget/FloatingActionButton;->mRippleColor:I

    iget v5, p0, Llenovo/design/widget/FloatingActionButton;->mBorderWidth:I

    invoke-virtual/range {v0 .. v5}, Llenovo/design/widget/FloatingActionButtonImpl;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;II)V

    .line 137
    iget-object v0, p0, Llenovo/design/widget/FloatingActionButton;->mImpl:Llenovo/design/widget/FloatingActionButtonImpl;

    invoke-virtual {v0, v8}, Llenovo/design/widget/FloatingActionButtonImpl;->setElevation(F)V

    .line 138
    iget-object v0, p0, Llenovo/design/widget/FloatingActionButton;->mImpl:Llenovo/design/widget/FloatingActionButtonImpl;

    invoke-virtual {v0, v10}, Llenovo/design/widget/FloatingActionButtonImpl;->setPressedTranslationZ(F)V

    .line 140
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Llenovo/design/widget/FloatingActionButton;->setClickable(Z)V

    .line 141
    return-void

    .line 125
    .end local v9    # "maxContentSize":I
    :cond_0
    const/16 v0, 0xc

    if-lt v11, v0, :cond_1

    .line 126
    new-instance v0, Llenovo/design/widget/FloatingActionButtonHoneycombMr1;

    invoke-direct {v0, p0, v7}, Llenovo/design/widget/FloatingActionButtonHoneycombMr1;-><init>(Landroid/view/View;Llenovo/design/widget/ShadowViewDelegate;)V

    iput-object v0, p0, Llenovo/design/widget/FloatingActionButton;->mImpl:Llenovo/design/widget/FloatingActionButtonImpl;

    goto :goto_0

    .line 128
    :cond_1
    new-instance v0, Llenovo/design/widget/FloatingActionButtonEclairMr1;

    invoke-direct {v0, p0, v7}, Llenovo/design/widget/FloatingActionButtonEclairMr1;-><init>(Landroid/view/View;Llenovo/design/widget/ShadowViewDelegate;)V

    iput-object v0, p0, Llenovo/design/widget/FloatingActionButton;->mImpl:Llenovo/design/widget/FloatingActionButtonImpl;

    goto :goto_0
.end method

.method static synthetic access$000(Llenovo/design/widget/FloatingActionButton;)Landroid/graphics/Rect;
    .locals 1
    .param p0, "x0"    # Llenovo/design/widget/FloatingActionButton;

    .prologue
    .line 56
    iget-object v0, p0, Llenovo/design/widget/FloatingActionButton;->mShadowPadding:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$100(Llenovo/design/widget/FloatingActionButton;)I
    .locals 1
    .param p0, "x0"    # Llenovo/design/widget/FloatingActionButton;

    .prologue
    .line 56
    iget v0, p0, Llenovo/design/widget/FloatingActionButton;->mContentPadding:I

    return v0
.end method

.method static synthetic access$201(Llenovo/design/widget/FloatingActionButton;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p0, "x0"    # Llenovo/design/widget/FloatingActionButton;
    .param p1, "x1"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 56
    invoke-super {p0, p1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method static parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;
    .locals 0
    .param p0, "value"    # I
    .param p1, "defaultMode"    # Landroid/graphics/PorterDuff$Mode;

    .prologue
    .line 301
    sparse-switch p0, :sswitch_data_0

    .line 313
    .end local p1    # "defaultMode":Landroid/graphics/PorterDuff$Mode;
    :goto_0
    return-object p1

    .line 303
    .restart local p1    # "defaultMode":Landroid/graphics/PorterDuff$Mode;
    :sswitch_0
    sget-object p1, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    goto :goto_0

    .line 305
    :sswitch_1
    sget-object p1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    goto :goto_0

    .line 307
    :sswitch_2
    sget-object p1, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    goto :goto_0

    .line 309
    :sswitch_3
    sget-object p1, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    goto :goto_0

    .line 311
    :sswitch_4
    sget-object p1, Landroid/graphics/PorterDuff$Mode;->SCREEN:Landroid/graphics/PorterDuff$Mode;

    goto :goto_0

    .line 301
    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x5 -> :sswitch_1
        0x9 -> :sswitch_2
        0xe -> :sswitch_3
        0xf -> :sswitch_4
    .end sparse-switch
.end method

.method private static resolveAdjustedSize(II)I
    .locals 3
    .param p0, "desiredSize"    # I
    .param p1, "measureSpec"    # I

    .prologue
    .line 277
    move v0, p0

    .line 278
    .local v0, "result":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 279
    .local v1, "specMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 280
    .local v2, "specSize":I
    sparse-switch v1, :sswitch_data_0

    .line 297
    :goto_0
    return v0

    .line 284
    :sswitch_0
    move v0, p0

    .line 285
    goto :goto_0

    .line 290
    :sswitch_1
    invoke-static {p0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 291
    goto :goto_0

    .line 294
    :sswitch_2
    move v0, v2

    goto :goto_0

    .line 280
    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x0 -> :sswitch_0
        0x40000000 -> :sswitch_2
    .end sparse-switch
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 2

    .prologue
    .line 265
    invoke-super {p0}, Landroid/widget/ImageView;->drawableStateChanged()V

    .line 266
    iget-object v0, p0, Llenovo/design/widget/FloatingActionButton;->mImpl:Llenovo/design/widget/FloatingActionButtonImpl;

    invoke-virtual {p0}, Llenovo/design/widget/FloatingActionButton;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Llenovo/design/widget/FloatingActionButtonImpl;->onDrawableStateChanged([I)V

    .line 267
    return-void
.end method

.method public getBackgroundTintList()Landroid/content/res/ColorStateList;
    .locals 1
    .annotation build Llenovo/annotation/Nullable;
    .end annotation

    .prologue
    .line 183
    iget-object v0, p0, Llenovo/design/widget/FloatingActionButton;->mBackgroundTint:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1
    .annotation build Llenovo/annotation/Nullable;
    .end annotation

    .prologue
    .line 211
    iget-object v0, p0, Llenovo/design/widget/FloatingActionButton;->mBackgroundTintMode:Landroid/graphics/PorterDuff$Mode;

    return-object v0
.end method

.method final getSizeDimension()I
    .locals 2

    .prologue
    .line 254
    iget v0, p0, Llenovo/design/widget/FloatingActionButton;->mSize:I

    packed-switch v0, :pswitch_data_0

    .line 259
    invoke-virtual {p0}, Llenovo/design/widget/FloatingActionButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x908003f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    :goto_0
    return v0

    .line 256
    :pswitch_0
    invoke-virtual {p0}, Llenovo/design/widget/FloatingActionButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x9080040

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_0

    .line 254
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public hide()V
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Llenovo/design/widget/FloatingActionButton;->mImpl:Llenovo/design/widget/FloatingActionButtonImpl;

    invoke-virtual {v0}, Llenovo/design/widget/FloatingActionButtonImpl;->hide()V

    .line 251
    return-void
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 272
    invoke-super {p0}, Landroid/widget/ImageView;->jumpDrawablesToCurrentState()V

    .line 273
    iget-object v0, p0, Llenovo/design/widget/FloatingActionButton;->mImpl:Llenovo/design/widget/FloatingActionButtonImpl;

    invoke-virtual {v0}, Llenovo/design/widget/FloatingActionButtonImpl;->jumpDrawableToCurrentState()V

    .line 274
    return-void
.end method

.method protected onMeasure(II)V
    .locals 7
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 145
    invoke-virtual {p0}, Llenovo/design/widget/FloatingActionButton;->getSizeDimension()I

    move-result v2

    .line 147
    .local v2, "preferredSize":I
    invoke-static {v2, p1}, Llenovo/design/widget/FloatingActionButton;->resolveAdjustedSize(II)I

    move-result v3

    .line 148
    .local v3, "w":I
    invoke-static {v2, p2}, Llenovo/design/widget/FloatingActionButton;->resolveAdjustedSize(II)I

    move-result v1

    .line 152
    .local v1, "h":I
    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 155
    .local v0, "d":I
    iget-object v4, p0, Llenovo/design/widget/FloatingActionButton;->mShadowPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, v0

    iget-object v5, p0, Llenovo/design/widget/FloatingActionButton;->mShadowPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v5

    iget-object v5, p0, Llenovo/design/widget/FloatingActionButton;->mShadowPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    add-int/2addr v5, v0

    iget-object v6, p0, Llenovo/design/widget/FloatingActionButton;->mShadowPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v5, v6

    invoke-virtual {p0, v4, v5}, Llenovo/design/widget/FloatingActionButton;->setMeasuredDimension(II)V

    .line 158
    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 6
    .param p1, "background"    # Landroid/graphics/drawable/Drawable;
        .annotation build Llenovo/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 231
    iget-object v0, p0, Llenovo/design/widget/FloatingActionButton;->mImpl:Llenovo/design/widget/FloatingActionButtonImpl;

    if-eqz v0, :cond_0

    .line 232
    iget-object v0, p0, Llenovo/design/widget/FloatingActionButton;->mImpl:Llenovo/design/widget/FloatingActionButtonImpl;

    iget-object v2, p0, Llenovo/design/widget/FloatingActionButton;->mBackgroundTint:Landroid/content/res/ColorStateList;

    iget-object v3, p0, Llenovo/design/widget/FloatingActionButton;->mBackgroundTintMode:Landroid/graphics/PorterDuff$Mode;

    iget v4, p0, Llenovo/design/widget/FloatingActionButton;->mRippleColor:I

    iget v5, p0, Llenovo/design/widget/FloatingActionButton;->mBorderWidth:I

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Llenovo/design/widget/FloatingActionButtonImpl;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;II)V

    .line 235
    :cond_0
    return-void
.end method

.method public setBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "tint"    # Landroid/content/res/ColorStateList;
        .annotation build Llenovo/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 193
    iget-object v0, p0, Llenovo/design/widget/FloatingActionButton;->mBackgroundTint:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_0

    .line 194
    iput-object p1, p0, Llenovo/design/widget/FloatingActionButton;->mBackgroundTint:Landroid/content/res/ColorStateList;

    .line 195
    iget-object v0, p0, Llenovo/design/widget/FloatingActionButton;->mImpl:Llenovo/design/widget/FloatingActionButtonImpl;

    invoke-virtual {v0, p1}, Llenovo/design/widget/FloatingActionButtonImpl;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 197
    :cond_0
    return-void
.end method

.method public setBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1
    .param p1, "tintMode"    # Landroid/graphics/PorterDuff$Mode;
        .annotation build Llenovo/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 223
    iget-object v0, p0, Llenovo/design/widget/FloatingActionButton;->mBackgroundTintMode:Landroid/graphics/PorterDuff$Mode;

    if-eq v0, p1, :cond_0

    .line 224
    iput-object p1, p0, Llenovo/design/widget/FloatingActionButton;->mBackgroundTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 225
    iget-object v0, p0, Llenovo/design/widget/FloatingActionButton;->mImpl:Llenovo/design/widget/FloatingActionButtonImpl;

    invoke-virtual {v0, p1}, Llenovo/design/widget/FloatingActionButtonImpl;->setBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 227
    :cond_0
    return-void
.end method

.method public setRippleColor(I)V
    .locals 1
    .param p1, "color"    # I
        .annotation build Llenovo/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 168
    iget v0, p0, Llenovo/design/widget/FloatingActionButton;->mRippleColor:I

    if-eq v0, p1, :cond_0

    .line 169
    iput p1, p0, Llenovo/design/widget/FloatingActionButton;->mRippleColor:I

    .line 170
    iget-object v0, p0, Llenovo/design/widget/FloatingActionButton;->mImpl:Llenovo/design/widget/FloatingActionButtonImpl;

    invoke-virtual {v0, p1}, Llenovo/design/widget/FloatingActionButtonImpl;->setRippleColor(I)V

    .line 172
    :cond_0
    return-void
.end method

.method public show()V
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Llenovo/design/widget/FloatingActionButton;->mImpl:Llenovo/design/widget/FloatingActionButtonImpl;

    invoke-virtual {v0}, Llenovo/design/widget/FloatingActionButtonImpl;->show()V

    .line 243
    return-void
.end method
