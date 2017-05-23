.class public Lcom/lenovo/design/internal/ScrimInsetsFrameLayout;
.super Landroid/widget/FrameLayout;
.source "ScrimInsetsFrameLayout.java"


# instance fields
.field private mInsetForeground:Landroid/graphics/drawable/Drawable;

.field private mInsets:Landroid/graphics/Rect;

.field private mTempRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 45
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/lenovo/design/internal/ScrimInsetsFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 49
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/lenovo/design/internal/ScrimInsetsFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 53
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 42
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/lenovo/design/internal/ScrimInsetsFrameLayout;->mTempRect:Landroid/graphics/Rect;

    .line 55
    sget-object v1, Lcom/lenovo/internal/R$styleable;->ScrimInsetsFrameLayout:[I

    const v2, 0x90302e7

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 58
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/design/internal/ScrimInsetsFrameLayout;->mInsetForeground:Landroid/graphics/drawable/Drawable;

    .line 59
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 60
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/lenovo/design/internal/ScrimInsetsFrameLayout;->setWillNotDraw(Z)V

    .line 61
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x14

    if-lt v1, v2, :cond_0

    .line 62
    new-instance v1, Lcom/lenovo/design/internal/ScrimInsetsFrameLayout$1;

    invoke-direct {v1, p0}, Lcom/lenovo/design/internal/ScrimInsetsFrameLayout$1;-><init>(Lcom/lenovo/design/internal/ScrimInsetsFrameLayout;)V

    invoke-virtual {p0, v1}, Lcom/lenovo/design/internal/ScrimInsetsFrameLayout;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    .line 80
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/lenovo/design/internal/ScrimInsetsFrameLayout;)Landroid/graphics/Rect;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/design/internal/ScrimInsetsFrameLayout;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/lenovo/design/internal/ScrimInsetsFrameLayout;->mInsets:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$002(Lcom/lenovo/design/internal/ScrimInsetsFrameLayout;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/design/internal/ScrimInsetsFrameLayout;
    .param p1, "x1"    # Landroid/graphics/Rect;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/lenovo/design/internal/ScrimInsetsFrameLayout;->mInsets:Landroid/graphics/Rect;

    return-object p1
.end method

.method static synthetic access$100(Lcom/lenovo/design/internal/ScrimInsetsFrameLayout;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/design/internal/ScrimInsetsFrameLayout;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/lenovo/design/internal/ScrimInsetsFrameLayout;->mInsetForeground:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;
        .annotation build Llenovo/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v7, 0x0

    .line 84
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    .line 86
    invoke-virtual {p0}, Lcom/lenovo/design/internal/ScrimInsetsFrameLayout;->getWidth()I

    move-result v2

    .line 87
    .local v2, "width":I
    invoke-virtual {p0}, Lcom/lenovo/design/internal/ScrimInsetsFrameLayout;->getHeight()I

    move-result v0

    .line 88
    .local v0, "height":I
    iget-object v3, p0, Lcom/lenovo/design/internal/ScrimInsetsFrameLayout;->mInsets:Landroid/graphics/Rect;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/lenovo/design/internal/ScrimInsetsFrameLayout;->mInsetForeground:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_0

    .line 89
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 90
    .local v1, "sc":I
    invoke-virtual {p0}, Lcom/lenovo/design/internal/ScrimInsetsFrameLayout;->getScrollX()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/lenovo/design/internal/ScrimInsetsFrameLayout;->getScrollY()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 93
    iget-object v3, p0, Lcom/lenovo/design/internal/ScrimInsetsFrameLayout;->mTempRect:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/lenovo/design/internal/ScrimInsetsFrameLayout;->mInsets:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    invoke-virtual {v3, v7, v7, v2, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 94
    iget-object v3, p0, Lcom/lenovo/design/internal/ScrimInsetsFrameLayout;->mInsetForeground:Landroid/graphics/drawable/Drawable;

    iget-object v4, p0, Lcom/lenovo/design/internal/ScrimInsetsFrameLayout;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 95
    iget-object v3, p0, Lcom/lenovo/design/internal/ScrimInsetsFrameLayout;->mInsetForeground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 98
    iget-object v3, p0, Lcom/lenovo/design/internal/ScrimInsetsFrameLayout;->mTempRect:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/lenovo/design/internal/ScrimInsetsFrameLayout;->mInsets:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int v4, v0, v4

    invoke-virtual {v3, v7, v4, v2, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 99
    iget-object v3, p0, Lcom/lenovo/design/internal/ScrimInsetsFrameLayout;->mInsetForeground:Landroid/graphics/drawable/Drawable;

    iget-object v4, p0, Lcom/lenovo/design/internal/ScrimInsetsFrameLayout;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 100
    iget-object v3, p0, Lcom/lenovo/design/internal/ScrimInsetsFrameLayout;->mInsetForeground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 103
    iget-object v3, p0, Lcom/lenovo/design/internal/ScrimInsetsFrameLayout;->mTempRect:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/lenovo/design/internal/ScrimInsetsFrameLayout;->mInsets:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget-object v5, p0, Lcom/lenovo/design/internal/ScrimInsetsFrameLayout;->mInsets:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    iget-object v6, p0, Lcom/lenovo/design/internal/ScrimInsetsFrameLayout;->mInsets:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    sub-int v6, v0, v6

    invoke-virtual {v3, v7, v4, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 104
    iget-object v3, p0, Lcom/lenovo/design/internal/ScrimInsetsFrameLayout;->mInsetForeground:Landroid/graphics/drawable/Drawable;

    iget-object v4, p0, Lcom/lenovo/design/internal/ScrimInsetsFrameLayout;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 105
    iget-object v3, p0, Lcom/lenovo/design/internal/ScrimInsetsFrameLayout;->mInsetForeground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 108
    iget-object v3, p0, Lcom/lenovo/design/internal/ScrimInsetsFrameLayout;->mTempRect:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/lenovo/design/internal/ScrimInsetsFrameLayout;->mInsets:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    sub-int v4, v2, v4

    iget-object v5, p0, Lcom/lenovo/design/internal/ScrimInsetsFrameLayout;->mInsets:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    iget-object v6, p0, Lcom/lenovo/design/internal/ScrimInsetsFrameLayout;->mInsets:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    sub-int v6, v0, v6

    invoke-virtual {v3, v4, v5, v2, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 109
    iget-object v3, p0, Lcom/lenovo/design/internal/ScrimInsetsFrameLayout;->mInsetForeground:Landroid/graphics/drawable/Drawable;

    iget-object v4, p0, Lcom/lenovo/design/internal/ScrimInsetsFrameLayout;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 110
    iget-object v3, p0, Lcom/lenovo/design/internal/ScrimInsetsFrameLayout;->mInsetForeground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 112
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 114
    .end local v1    # "sc":I
    :cond_0
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 118
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 119
    iget-object v0, p0, Lcom/lenovo/design/internal/ScrimInsetsFrameLayout;->mInsetForeground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/lenovo/design/internal/ScrimInsetsFrameLayout;->mInsetForeground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 122
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 126
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 127
    iget-object v0, p0, Lcom/lenovo/design/internal/ScrimInsetsFrameLayout;->mInsetForeground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/lenovo/design/internal/ScrimInsetsFrameLayout;->mInsetForeground:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 130
    :cond_0
    return-void
.end method
