.class Llenovo/design/widget/CircularBorderDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "CircularBorderDrawable.java"


# static fields
.field private static final DRAW_STROKE_WIDTH_MULTIPLE:F = 1.3333f


# instance fields
.field mBorderWidth:F

.field private mBottomInnerStrokeColor:I

.field private mBottomOuterStrokeColor:I

.field private mInvalidateShader:Z

.field final mPaint:Landroid/graphics/Paint;

.field final mRect:Landroid/graphics/Rect;

.field final mRectF:Landroid/graphics/RectF;

.field private mTintColor:I

.field private mTopInnerStrokeColor:I

.field private mTopOuterStrokeColor:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 56
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 42
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Llenovo/design/widget/CircularBorderDrawable;->mRect:Landroid/graphics/Rect;

    .line 43
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Llenovo/design/widget/CircularBorderDrawable;->mRectF:Landroid/graphics/RectF;

    .line 54
    iput-boolean v1, p0, Llenovo/design/widget/CircularBorderDrawable;->mInvalidateShader:Z

    .line 57
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Llenovo/design/widget/CircularBorderDrawable;->mPaint:Landroid/graphics/Paint;

    .line 58
    iget-object v0, p0, Llenovo/design/widget/CircularBorderDrawable;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 59
    return-void
.end method

.method private createGradientShader()Landroid/graphics/Shader;
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/high16 v10, 0x3f800000    # 1.0f

    const/high16 v7, 0x3f000000    # 0.5f

    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 144
    iget-object v9, p0, Llenovo/design/widget/CircularBorderDrawable;->mRect:Landroid/graphics/Rect;

    .line 145
    .local v9, "rect":Landroid/graphics/Rect;
    invoke-virtual {p0, v9}, Llenovo/design/widget/CircularBorderDrawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 147
    iget v0, p0, Llenovo/design/widget/CircularBorderDrawable;->mBorderWidth:F

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    div-float v8, v0, v2

    .line 149
    .local v8, "borderRatio":F
    const/4 v0, 0x6

    new-array v5, v0, [I

    .line 150
    .local v5, "colors":[I
    iget v0, p0, Llenovo/design/widget/CircularBorderDrawable;->mTopOuterStrokeColor:I

    iget v2, p0, Llenovo/design/widget/CircularBorderDrawable;->mTintColor:I

    invoke-static {v0, v2}, Llenovo/design/widget/ColorUtils;->compositeColors(II)I

    move-result v0

    aput v0, v5, v4

    .line 151
    iget v0, p0, Llenovo/design/widget/CircularBorderDrawable;->mTopInnerStrokeColor:I

    iget v2, p0, Llenovo/design/widget/CircularBorderDrawable;->mTintColor:I

    invoke-static {v0, v2}, Llenovo/design/widget/ColorUtils;->compositeColors(II)I

    move-result v0

    aput v0, v5, v11

    .line 152
    const/4 v0, 0x2

    iget v2, p0, Llenovo/design/widget/CircularBorderDrawable;->mTopInnerStrokeColor:I

    invoke-static {v2, v4}, Llenovo/design/widget/ColorUtils;->setAlphaComponent(II)I

    move-result v2

    iget v3, p0, Llenovo/design/widget/CircularBorderDrawable;->mTintColor:I

    invoke-static {v2, v3}, Llenovo/design/widget/ColorUtils;->compositeColors(II)I

    move-result v2

    aput v2, v5, v0

    .line 154
    const/4 v0, 0x3

    iget v2, p0, Llenovo/design/widget/CircularBorderDrawable;->mBottomInnerStrokeColor:I

    invoke-static {v2, v4}, Llenovo/design/widget/ColorUtils;->setAlphaComponent(II)I

    move-result v2

    iget v3, p0, Llenovo/design/widget/CircularBorderDrawable;->mTintColor:I

    invoke-static {v2, v3}, Llenovo/design/widget/ColorUtils;->compositeColors(II)I

    move-result v2

    aput v2, v5, v0

    .line 156
    const/4 v0, 0x4

    iget v2, p0, Llenovo/design/widget/CircularBorderDrawable;->mBottomInnerStrokeColor:I

    iget v3, p0, Llenovo/design/widget/CircularBorderDrawable;->mTintColor:I

    invoke-static {v2, v3}, Llenovo/design/widget/ColorUtils;->compositeColors(II)I

    move-result v2

    aput v2, v5, v0

    .line 157
    const/4 v0, 0x5

    iget v2, p0, Llenovo/design/widget/CircularBorderDrawable;->mBottomOuterStrokeColor:I

    iget v3, p0, Llenovo/design/widget/CircularBorderDrawable;->mTintColor:I

    invoke-static {v2, v3}, Llenovo/design/widget/ColorUtils;->compositeColors(II)I

    move-result v2

    aput v2, v5, v0

    .line 159
    const/4 v0, 0x6

    new-array v6, v0, [F

    .line 160
    .local v6, "positions":[F
    aput v1, v6, v4

    .line 161
    aput v8, v6, v11

    .line 162
    const/4 v0, 0x2

    aput v7, v6, v0

    .line 163
    const/4 v0, 0x3

    aput v7, v6, v0

    .line 164
    const/4 v0, 0x4

    sub-float v2, v10, v8

    aput v2, v6, v0

    .line 165
    const/4 v0, 0x5

    aput v10, v6, v0

    .line 167
    new-instance v0, Landroid/graphics/LinearGradient;

    iget v2, v9, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iget v3, v9, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v3

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move v3, v1

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    return-object v0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 83
    iget-boolean v2, p0, Llenovo/design/widget/CircularBorderDrawable;->mInvalidateShader:Z

    if-eqz v2, :cond_0

    .line 84
    iget-object v2, p0, Llenovo/design/widget/CircularBorderDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-direct {p0}, Llenovo/design/widget/CircularBorderDrawable;->createGradientShader()Landroid/graphics/Shader;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 85
    const/4 v2, 0x0

    iput-boolean v2, p0, Llenovo/design/widget/CircularBorderDrawable;->mInvalidateShader:Z

    .line 88
    :cond_0
    iget-object v2, p0, Llenovo/design/widget/CircularBorderDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float v0, v2, v3

    .line 89
    .local v0, "halfBorderWidth":F
    iget-object v1, p0, Llenovo/design/widget/CircularBorderDrawable;->mRectF:Landroid/graphics/RectF;

    .line 93
    .local v1, "rectF":Landroid/graphics/RectF;
    iget-object v2, p0, Llenovo/design/widget/CircularBorderDrawable;->mRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v2}, Llenovo/design/widget/CircularBorderDrawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 94
    iget-object v2, p0, Llenovo/design/widget/CircularBorderDrawable;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 95
    iget v2, v1, Landroid/graphics/RectF;->left:F

    add-float/2addr v2, v0

    iput v2, v1, Landroid/graphics/RectF;->left:F

    .line 96
    iget v2, v1, Landroid/graphics/RectF;->top:F

    add-float/2addr v2, v0

    iput v2, v1, Landroid/graphics/RectF;->top:F

    .line 97
    iget v2, v1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v2, v0

    iput v2, v1, Landroid/graphics/RectF;->right:F

    .line 98
    iget v2, v1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v2, v0

    iput v2, v1, Landroid/graphics/RectF;->bottom:F

    .line 101
    iget-object v2, p0, Llenovo/design/widget/CircularBorderDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 102
    return-void
.end method

.method public getOpacity()I
    .locals 2

    .prologue
    .line 131
    iget v0, p0, Llenovo/design/widget/CircularBorderDrawable;->mBorderWidth:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, -0x3

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x2

    goto :goto_0
.end method

.method public getPadding(Landroid/graphics/Rect;)Z
    .locals 2
    .param p1, "padding"    # Landroid/graphics/Rect;

    .prologue
    .line 106
    iget v1, p0, Llenovo/design/widget/CircularBorderDrawable;->mBorderWidth:F

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 107
    .local v0, "borderWidth":I
    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 108
    const/4 v1, 0x1

    return v1
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 136
    const/4 v0, 0x1

    iput-boolean v0, p0, Llenovo/design/widget/CircularBorderDrawable;->mInvalidateShader:Z

    .line 137
    return-void
.end method

.method public setAlpha(I)V
    .locals 1
    .param p1, "alpha"    # I

    .prologue
    .line 113
    iget-object v0, p0, Llenovo/design/widget/CircularBorderDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 114
    invoke-virtual {p0}, Llenovo/design/widget/CircularBorderDrawable;->invalidateSelf()V

    .line 115
    return-void
.end method

.method setBorderWidth(F)V
    .locals 2
    .param p1, "width"    # F

    .prologue
    .line 73
    iget v0, p0, Llenovo/design/widget/CircularBorderDrawable;->mBorderWidth:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 74
    iput p1, p0, Llenovo/design/widget/CircularBorderDrawable;->mBorderWidth:F

    .line 75
    iget-object v0, p0, Llenovo/design/widget/CircularBorderDrawable;->mPaint:Landroid/graphics/Paint;

    const v1, 0x3faaa993    # 1.3333f

    mul-float/2addr v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 76
    const/4 v0, 0x1

    iput-boolean v0, p0, Llenovo/design/widget/CircularBorderDrawable;->mInvalidateShader:Z

    .line 77
    invoke-virtual {p0}, Llenovo/design/widget/CircularBorderDrawable;->invalidateSelf()V

    .line 79
    :cond_0
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .param p1, "colorFilter"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 125
    iget-object v0, p0, Llenovo/design/widget/CircularBorderDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 126
    invoke-virtual {p0}, Llenovo/design/widget/CircularBorderDrawable;->invalidateSelf()V

    .line 127
    return-void
.end method

.method setGradientColors(IIII)V
    .locals 0
    .param p1, "topOuterStrokeColor"    # I
    .param p2, "topInnerStrokeColor"    # I
    .param p3, "bottomOuterStrokeColor"    # I
    .param p4, "bottomInnerStrokeColor"    # I

    .prologue
    .line 63
    iput p1, p0, Llenovo/design/widget/CircularBorderDrawable;->mTopOuterStrokeColor:I

    .line 64
    iput p2, p0, Llenovo/design/widget/CircularBorderDrawable;->mTopInnerStrokeColor:I

    .line 65
    iput p3, p0, Llenovo/design/widget/CircularBorderDrawable;->mBottomOuterStrokeColor:I

    .line 66
    iput p4, p0, Llenovo/design/widget/CircularBorderDrawable;->mBottomInnerStrokeColor:I

    .line 67
    return-void
.end method

.method setTintColor(I)V
    .locals 1
    .param p1, "tintColor"    # I

    .prologue
    .line 118
    iput p1, p0, Llenovo/design/widget/CircularBorderDrawable;->mTintColor:I

    .line 119
    const/4 v0, 0x1

    iput-boolean v0, p0, Llenovo/design/widget/CircularBorderDrawable;->mInvalidateShader:Z

    .line 120
    invoke-virtual {p0}, Llenovo/design/widget/CircularBorderDrawable;->invalidateSelf()V

    .line 121
    return-void
.end method
