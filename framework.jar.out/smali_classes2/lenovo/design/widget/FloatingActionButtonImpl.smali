.class abstract Llenovo/design/widget/FloatingActionButtonImpl;
.super Ljava/lang/Object;
.source "FloatingActionButtonImpl.java"


# static fields
.field static final EMPTY_STATE_SET:[I

.field static final FOCUSED_ENABLED_STATE_SET:[I

.field static final PRESSED_ENABLED_STATE_SET:[I

.field static final SHOW_HIDE_ANIM_DURATION:I = 0xc8


# instance fields
.field final mShadowViewDelegate:Llenovo/design/widget/ShadowViewDelegate;

.field final mView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 31
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Llenovo/design/widget/FloatingActionButtonImpl;->PRESSED_ENABLED_STATE_SET:[I

    .line 33
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Llenovo/design/widget/FloatingActionButtonImpl;->FOCUSED_ENABLED_STATE_SET:[I

    .line 35
    const/4 v0, 0x0

    new-array v0, v0, [I

    sput-object v0, Llenovo/design/widget/FloatingActionButtonImpl;->EMPTY_STATE_SET:[I

    return-void

    .line 31
    nop

    :array_0
    .array-data 4
        0x10100a7
        0x101009e
    .end array-data

    .line 33
    :array_1
    .array-data 4
        0x101009c
        0x101009e
    .end array-data
.end method

.method constructor <init>(Landroid/view/View;Llenovo/design/widget/ShadowViewDelegate;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "shadowViewDelegate"    # Llenovo/design/widget/ShadowViewDelegate;

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Llenovo/design/widget/FloatingActionButtonImpl;->mView:Landroid/view/View;

    .line 42
    iput-object p2, p0, Llenovo/design/widget/FloatingActionButtonImpl;->mShadowViewDelegate:Llenovo/design/widget/ShadowViewDelegate;

    .line 43
    return-void
.end method


# virtual methods
.method createBorderDrawable(ILandroid/content/res/ColorStateList;)Landroid/graphics/drawable/Drawable;
    .locals 6
    .param p1, "borderWidth"    # I
    .param p2, "backgroundTint"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 67
    iget-object v2, p0, Llenovo/design/widget/FloatingActionButtonImpl;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 68
    .local v1, "resources":Landroid/content/res/Resources;
    invoke-virtual {p0}, Llenovo/design/widget/FloatingActionButtonImpl;->newCircularDrawable()Llenovo/design/widget/CircularBorderDrawable;

    move-result-object v0

    .line 69
    .local v0, "borderDrawable":Llenovo/design/widget/CircularBorderDrawable;
    const v2, 0x9070040

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    const v3, 0x9070041

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    const v4, 0x9070043

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    const v5, 0x9070042

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v0, v2, v3, v4, v5}, Llenovo/design/widget/CircularBorderDrawable;->setGradientColors(IIII)V

    .line 74
    int-to-float v2, p1

    invoke-virtual {v0, v2}, Llenovo/design/widget/CircularBorderDrawable;->setBorderWidth(F)V

    .line 75
    invoke-virtual {p2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v2

    invoke-virtual {v0, v2}, Llenovo/design/widget/CircularBorderDrawable;->setTintColor(I)V

    .line 76
    return-object v0
.end method

.method abstract hide()V
.end method

.method abstract jumpDrawableToCurrentState()V
.end method

.method newCircularDrawable()Llenovo/design/widget/CircularBorderDrawable;
    .locals 1

    .prologue
    .line 80
    new-instance v0, Llenovo/design/widget/CircularBorderDrawable;

    invoke-direct {v0}, Llenovo/design/widget/CircularBorderDrawable;-><init>()V

    return-object v0
.end method

.method abstract onDrawableStateChanged([I)V
.end method

.method abstract setBackgroundDrawable(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;II)V
.end method

.method abstract setBackgroundTintList(Landroid/content/res/ColorStateList;)V
.end method

.method abstract setBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
.end method

.method abstract setElevation(F)V
.end method

.method abstract setPressedTranslationZ(F)V
.end method

.method abstract setRippleColor(I)V
.end method

.method abstract show()V
.end method
