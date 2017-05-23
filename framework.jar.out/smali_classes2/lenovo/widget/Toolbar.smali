.class public Llenovo/widget/Toolbar;
.super Landroid/view/ViewGroup;
.source "Toolbar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llenovo/widget/Toolbar$ExpandedActionViewMenuPresenter;,
        Llenovo/widget/Toolbar$SavedState;,
        Llenovo/widget/Toolbar$LayoutParams;,
        Llenovo/widget/Toolbar$OnMenuItemClickListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Toolbar"


# instance fields
.field private mActionMenuPresenterCallback:Lcom/lenovo/internal/view/menu/MenuPresenter$Callback;

.field private mButtonGravity:I

.field private mCollapseButtonView:Landroid/widget/ImageButton;

.field private mCollapseIcon:Landroid/graphics/drawable/Drawable;

.field private mCollapsible:Z

.field private final mContentInsets:Lcom/lenovo/internal/widget/RtlSpacingHelper;

.field private mEatingTouch:Z

.field mExpandedActionView:Landroid/view/View;

.field private mExpandedMenuPresenter:Llenovo/widget/Toolbar$ExpandedActionViewMenuPresenter;

.field private mGravity:I

.field private mLogoView:Landroid/widget/ImageView;

.field private mMaxButtonHeight:I

.field private mMenuBuilderCallback:Lcom/lenovo/internal/view/menu/MenuBuilder$Callback;

.field private mMenuView:Llenovo/widget/ActionMenuView;

.field private final mMenuViewItemClickListener:Llenovo/widget/ActionMenuView$OnMenuItemClickListener;

.field private mMinHeight:I

.field private mNavButtonView:Landroid/widget/ImageButton;

.field private mOnMenuItemClickListener:Llenovo/widget/Toolbar$OnMenuItemClickListener;

.field private mOuterActionMenuPresenter:Llenovo/widget/ActionMenuPresenter;

.field private mPopupContext:Landroid/content/Context;

.field private mPopupTheme:I

.field private final mShowOverflowMenuRunnable:Ljava/lang/Runnable;

.field private mSubtitleText:Ljava/lang/CharSequence;

.field private mSubtitleTextAppearance:I

.field private mSubtitleTextColor:I

.field private mSubtitleTextView:Landroid/widget/TextView;

.field private final mTempMargins:[I

.field private final mTempViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mTitleMarginBottom:I

.field private mTitleMarginEnd:I

.field private mTitleMarginStart:I

.field private mTitleMarginTop:I

.field private mTitleText:Ljava/lang/CharSequence;

.field private mTitleTextAppearance:I

.field private mTitleTextColor:I

.field private mTitleTextView:Landroid/widget/TextView;

.field private mWrapper:Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 184
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Llenovo/widget/Toolbar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 185
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 188
    const v0, 0x10102ce

    invoke-direct {p0, p1, p2, v0}, Llenovo/widget/Toolbar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 189
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 192
    invoke-static {p1, p2, p3}, Llenovo/widget/Toolbar;->themifyContext(Landroid/content/Context;Landroid/util/AttributeSet;I)Landroid/content/Context;

    move-result-object v9

    invoke-direct {p0, v9, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 138
    new-instance v9, Lcom/lenovo/internal/widget/RtlSpacingHelper;

    invoke-direct {v9}, Lcom/lenovo/internal/widget/RtlSpacingHelper;-><init>()V

    iput-object v9, p0, Llenovo/widget/Toolbar;->mContentInsets:Lcom/lenovo/internal/widget/RtlSpacingHelper;

    .line 140
    const v9, 0x800013

    iput v9, p0, Llenovo/widget/Toolbar;->mGravity:I

    .line 151
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Llenovo/widget/Toolbar;->mTempViews:Ljava/util/ArrayList;

    .line 153
    const/4 v9, 0x2

    new-array v9, v9, [I

    iput-object v9, p0, Llenovo/widget/Toolbar;->mTempMargins:[I

    .line 157
    new-instance v9, Llenovo/widget/Toolbar$1;

    invoke-direct {v9, p0}, Llenovo/widget/Toolbar$1;-><init>(Llenovo/widget/Toolbar;)V

    iput-object v9, p0, Llenovo/widget/Toolbar;->mMenuViewItemClickListener:Llenovo/widget/ActionMenuView$OnMenuItemClickListener;

    .line 177
    new-instance v9, Llenovo/widget/Toolbar$2;

    invoke-direct {v9, p0}, Llenovo/widget/Toolbar$2;-><init>(Llenovo/widget/Toolbar;)V

    iput-object v9, p0, Llenovo/widget/Toolbar;->mShowOverflowMenuRunnable:Ljava/lang/Runnable;

    .line 195
    sget-object v9, Lcom/lenovo/internal/R$styleable;->ActionBar:[I

    const/4 v10, 0x0

    invoke-virtual {p1, p2, v9, p3, v10}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 197
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {p0}, Llenovo/widget/Toolbar;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 199
    .local v6, "resources":Landroid/content/res/Resources;
    const/16 v9, 0xd

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v9

    iput v9, p0, Llenovo/widget/Toolbar;->mTitleTextAppearance:I

    .line 200
    const/16 v9, 0xe

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v9

    iput v9, p0, Llenovo/widget/Toolbar;->mSubtitleTextAppearance:I

    .line 201
    const/4 v9, 0x3

    iget v10, p0, Llenovo/widget/Toolbar;->mGravity:I

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v9

    iput v9, p0, Llenovo/widget/Toolbar;->mGravity:I

    .line 203
    const/16 v9, 0x30

    iput v9, p0, Llenovo/widget/Toolbar;->mButtonGravity:I

    .line 204
    const v9, 0x9080034    # 1.63705E-33f

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v9

    iput v9, p0, Llenovo/widget/Toolbar;->mTitleMarginBottom:I

    iput v9, p0, Llenovo/widget/Toolbar;->mTitleMarginTop:I

    iput v9, p0, Llenovo/widget/Toolbar;->mTitleMarginEnd:I

    iput v9, p0, Llenovo/widget/Toolbar;->mTitleMarginStart:I

    .line 207
    const v9, 0x9080035

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    iput v9, p0, Llenovo/widget/Toolbar;->mMaxButtonHeight:I

    .line 209
    const v9, 0x908002b

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    .line 210
    .local v4, "contentInsetStart":I
    const v9, 0x908002c

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    .line 211
    .local v1, "contentInsetEnd":I
    const v9, 0x908002d

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    .line 212
    .local v2, "contentInsetLeft":I
    const v9, 0x908002e

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    .line 214
    .local v3, "contentInsetRight":I
    iget-object v9, p0, Llenovo/widget/Toolbar;->mContentInsets:Lcom/lenovo/internal/widget/RtlSpacingHelper;

    invoke-virtual {v9, v2, v3}, Lcom/lenovo/internal/widget/RtlSpacingHelper;->setAbsolute(II)V

    .line 216
    const/high16 v9, -0x80000000

    if-ne v4, v9, :cond_0

    const/high16 v9, -0x80000000

    if-eq v1, v9, :cond_1

    .line 218
    :cond_0
    iget-object v9, p0, Llenovo/widget/Toolbar;->mContentInsets:Lcom/lenovo/internal/widget/RtlSpacingHelper;

    invoke-virtual {v9, v4, v1}, Lcom/lenovo/internal/widget/RtlSpacingHelper;->setRelative(II)V

    .line 221
    :cond_1
    const/16 v9, 0xf

    invoke-virtual {v0, v9}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    iput-object v9, p0, Llenovo/widget/Toolbar;->mCollapseIcon:Landroid/graphics/drawable/Drawable;

    .line 223
    const/4 v9, 0x7

    invoke-virtual {v0, v9}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    .line 224
    .local v8, "title":Ljava/lang/CharSequence;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 225
    invoke-virtual {p0, v8}, Llenovo/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 228
    :cond_2
    const/16 v9, 0xb

    invoke-virtual {v0, v9}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    .line 229
    .local v7, "subtitle":Ljava/lang/CharSequence;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 230
    invoke-virtual {p0, v7}, Llenovo/widget/Toolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 233
    :cond_3
    invoke-virtual {p0}, Llenovo/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v9

    iput-object v9, p0, Llenovo/widget/Toolbar;->mPopupContext:Landroid/content/Context;

    .line 241
    const v9, 0x90c0002

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    .line 242
    .local v5, "navDesc":Ljava/lang/CharSequence;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_4

    .line 243
    invoke-virtual {p0, v5}, Llenovo/widget/Toolbar;->setNavigationContentDescription(Ljava/lang/CharSequence;)V

    .line 247
    :cond_4
    const/4 v9, 0x5

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v9

    iput v9, p0, Llenovo/widget/Toolbar;->mMinHeight:I

    .line 249
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 250
    return-void
.end method

.method static synthetic access$000(Llenovo/widget/Toolbar;)Llenovo/widget/Toolbar$OnMenuItemClickListener;
    .locals 1
    .param p0, "x0"    # Llenovo/widget/Toolbar;

    .prologue
    .line 107
    iget-object v0, p0, Llenovo/widget/Toolbar;->mOnMenuItemClickListener:Llenovo/widget/Toolbar$OnMenuItemClickListener;

    return-object v0
.end method

.method static synthetic access$200(Llenovo/widget/Toolbar;)V
    .locals 0
    .param p0, "x0"    # Llenovo/widget/Toolbar;

    .prologue
    .line 107
    invoke-direct {p0}, Llenovo/widget/Toolbar;->ensureCollapseButtonView()V

    return-void
.end method

.method static synthetic access$300(Llenovo/widget/Toolbar;)Landroid/widget/ImageButton;
    .locals 1
    .param p0, "x0"    # Llenovo/widget/Toolbar;

    .prologue
    .line 107
    iget-object v0, p0, Llenovo/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$400(Llenovo/widget/Toolbar;)I
    .locals 1
    .param p0, "x0"    # Llenovo/widget/Toolbar;

    .prologue
    .line 107
    iget v0, p0, Llenovo/widget/Toolbar;->mButtonGravity:I

    return v0
.end method

.method static synthetic access$500(Llenovo/widget/Toolbar;Z)V
    .locals 0
    .param p0, "x0"    # Llenovo/widget/Toolbar;
    .param p1, "x1"    # Z

    .prologue
    .line 107
    invoke-direct {p0, p1}, Llenovo/widget/Toolbar;->setChildVisibilityForExpandedActionView(Z)V

    return-void
.end method

.method private addCustomViewsWithGravity(Ljava/util/List;I)V
    .locals 7
    .param p2, "gravity"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .local p1, "views":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    const/4 v4, 0x1

    .line 1613
    invoke-static {p0}, Lcom/lenovo/internal/widget/ViewUtils;->getLayoutDirection(Landroid/view/View;)I

    move-result v6

    if-ne v6, v4, :cond_1

    .line 1614
    .local v4, "isRtl":Z
    :goto_0
    invoke-virtual {p0}, Llenovo/widget/Toolbar;->getChildCount()I

    move-result v2

    .line 1615
    .local v2, "childCount":I
    invoke-static {p0}, Lcom/lenovo/internal/widget/ViewUtils;->getLayoutDirection(Landroid/view/View;)I

    move-result v6

    invoke-static {p2, v6}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v0

    .line 1617
    .local v0, "absGrav":I
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 1619
    if-eqz v4, :cond_2

    .line 1620
    add-int/lit8 v3, v2, -0x1

    .local v3, "i":I
    :goto_1
    if-ltz v3, :cond_4

    .line 1621
    invoke-virtual {p0, v3}, Llenovo/widget/Toolbar;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1622
    .local v1, "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Llenovo/widget/Toolbar$LayoutParams;

    .line 1623
    .local v5, "lp":Llenovo/widget/Toolbar$LayoutParams;
    iget v6, v5, Llenovo/widget/Toolbar$LayoutParams;->mViewType:I

    if-nez v6, :cond_0

    invoke-direct {p0, v1}, Llenovo/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget v6, v5, Llenovo/widget/Toolbar$LayoutParams;->gravity:I

    invoke-direct {p0, v6}, Llenovo/widget/Toolbar;->getChildHorizontalGravity(I)I

    move-result v6

    if-ne v6, v0, :cond_0

    .line 1625
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1620
    :cond_0
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 1613
    .end local v0    # "absGrav":I
    .end local v1    # "child":Landroid/view/View;
    .end local v2    # "childCount":I
    .end local v3    # "i":I
    .end local v4    # "isRtl":Z
    .end local v5    # "lp":Llenovo/widget/Toolbar$LayoutParams;
    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    .line 1629
    .restart local v0    # "absGrav":I
    .restart local v2    # "childCount":I
    .restart local v4    # "isRtl":Z
    :cond_2
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_2
    if-ge v3, v2, :cond_4

    .line 1630
    invoke-virtual {p0, v3}, Llenovo/widget/Toolbar;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1631
    .restart local v1    # "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Llenovo/widget/Toolbar$LayoutParams;

    .line 1632
    .restart local v5    # "lp":Llenovo/widget/Toolbar$LayoutParams;
    iget v6, v5, Llenovo/widget/Toolbar$LayoutParams;->mViewType:I

    if-nez v6, :cond_3

    invoke-direct {p0, v1}, Llenovo/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_3

    iget v6, v5, Llenovo/widget/Toolbar$LayoutParams;->gravity:I

    invoke-direct {p0, v6}, Llenovo/widget/Toolbar;->getChildHorizontalGravity(I)I

    move-result v6

    if-ne v6, v0, :cond_3

    .line 1634
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1629
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1638
    .end local v1    # "child":Landroid/view/View;
    .end local v5    # "lp":Llenovo/widget/Toolbar$LayoutParams;
    :cond_4
    return-void
.end method

.method private addSystemView(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1020
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 1022
    .local v1, "vlp":Landroid/view/ViewGroup$LayoutParams;
    if-nez v1, :cond_0

    .line 1023
    invoke-virtual {p0}, Llenovo/widget/Toolbar;->generateDefaultLayoutParams()Llenovo/widget/Toolbar$LayoutParams;

    move-result-object v0

    .line 1029
    .local v0, "lp":Llenovo/widget/Toolbar$LayoutParams;
    :goto_0
    const/4 v2, 0x1

    iput v2, v0, Llenovo/widget/Toolbar$LayoutParams;->mViewType:I

    .line 1030
    invoke-virtual {p0, p1, v0}, Llenovo/widget/Toolbar;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1031
    return-void

    .line 1024
    .end local v0    # "lp":Llenovo/widget/Toolbar$LayoutParams;
    :cond_0
    invoke-virtual {p0, v1}, Llenovo/widget/Toolbar;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1025
    invoke-virtual {p0, v1}, Llenovo/widget/Toolbar;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Llenovo/widget/Toolbar$LayoutParams;

    move-result-object v0

    .restart local v0    # "lp":Llenovo/widget/Toolbar$LayoutParams;
    goto :goto_0

    .end local v0    # "lp":Llenovo/widget/Toolbar$LayoutParams;
    :cond_1
    move-object v0, v1

    .line 1027
    check-cast v0, Llenovo/widget/Toolbar$LayoutParams;

    .restart local v0    # "lp":Llenovo/widget/Toolbar$LayoutParams;
    goto :goto_0
.end method

.method private ensureCollapseButtonView()V
    .locals 7

    .prologue
    .line 986
    iget-object v4, p0, Llenovo/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    if-nez v4, :cond_1

    .line 991
    new-instance v4, Landroid/widget/ImageButton;

    invoke-virtual {p0}, Llenovo/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Llenovo/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    .line 992
    iget-object v4, p0, Llenovo/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    sget-object v5, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 993
    iget-object v4, p0, Llenovo/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Llenovo/widget/Toolbar;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x9080036

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setMinimumWidth(I)V

    .line 994
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x15

    if-lt v4, v5, :cond_2

    .line 995
    iget-object v4, p0, Llenovo/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    const v5, 0x902000e

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 1005
    :cond_0
    :goto_0
    iget-object v4, p0, Llenovo/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    iget-object v5, p0, Llenovo/widget/Toolbar;->mCollapseIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1006
    invoke-virtual {p0}, Llenovo/widget/Toolbar;->generateDefaultLayoutParams()Llenovo/widget/Toolbar$LayoutParams;

    move-result-object v2

    .line 1007
    .local v2, "lp":Llenovo/widget/Toolbar$LayoutParams;
    const v4, 0x800003

    iget v5, p0, Llenovo/widget/Toolbar;->mButtonGravity:I

    and-int/lit8 v5, v5, 0x70

    or-int/2addr v4, v5

    iput v4, v2, Llenovo/widget/Toolbar$LayoutParams;->gravity:I

    .line 1008
    const/4 v4, 0x2

    iput v4, v2, Llenovo/widget/Toolbar$LayoutParams;->mViewType:I

    .line 1009
    iget-object v4, p0, Llenovo/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v4, v2}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1010
    iget-object v4, p0, Llenovo/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    new-instance v5, Llenovo/widget/Toolbar$3;

    invoke-direct {v5, p0}, Llenovo/widget/Toolbar$3;-><init>(Llenovo/widget/Toolbar;)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1017
    .end local v2    # "lp":Llenovo/widget/Toolbar$LayoutParams;
    :cond_1
    return-void

    .line 997
    :cond_2
    new-instance v3, Landroid/util/TypedValue;

    invoke-direct {v3}, Landroid/util/TypedValue;-><init>()V

    .line 998
    .local v3, "tValue":Landroid/util/TypedValue;
    invoke-virtual {p0}, Llenovo/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    const v5, 0x101030e

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v3, v6}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v1

    .line 999
    .local v1, "hasArr":Z
    if-eqz v1, :cond_0

    iget v4, v3, Landroid/util/TypedValue;->resourceId:I

    if-eqz v4, :cond_0

    .line 1000
    invoke-virtual {p0}, Llenovo/widget/Toolbar;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget v5, v3, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1001
    .local v0, "background":Landroid/graphics/drawable/Drawable;
    iget-object v4, p0, Llenovo/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    invoke-static {v4, v0}, Lcom/lenovo/internal/widget/ViewUtils;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private ensureLogoView()V
    .locals 2

    .prologue
    .line 476
    iget-object v0, p0, Llenovo/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 477
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Llenovo/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Llenovo/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    .line 479
    :cond_0
    return-void
.end method

.method private ensureMenu()V
    .locals 3

    .prologue
    .line 791
    invoke-direct {p0}, Llenovo/widget/Toolbar;->ensureMenuView()V

    .line 792
    iget-object v1, p0, Llenovo/widget/Toolbar;->mMenuView:Llenovo/widget/ActionMenuView;

    invoke-virtual {v1}, Llenovo/widget/ActionMenuView;->peekMenu()Lcom/lenovo/internal/view/menu/MenuBuilder;

    move-result-object v1

    if-nez v1, :cond_1

    .line 794
    iget-object v1, p0, Llenovo/widget/Toolbar;->mMenuView:Llenovo/widget/ActionMenuView;

    invoke-virtual {v1}, Llenovo/widget/ActionMenuView;->getMenu()Landroid/view/Menu;

    move-result-object v0

    check-cast v0, Lcom/lenovo/internal/view/menu/MenuBuilder;

    .line 795
    .local v0, "menu":Lcom/lenovo/internal/view/menu/MenuBuilder;
    iget-object v1, p0, Llenovo/widget/Toolbar;->mExpandedMenuPresenter:Llenovo/widget/Toolbar$ExpandedActionViewMenuPresenter;

    if-nez v1, :cond_0

    .line 796
    new-instance v1, Llenovo/widget/Toolbar$ExpandedActionViewMenuPresenter;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Llenovo/widget/Toolbar$ExpandedActionViewMenuPresenter;-><init>(Llenovo/widget/Toolbar;Llenovo/widget/Toolbar$1;)V

    iput-object v1, p0, Llenovo/widget/Toolbar;->mExpandedMenuPresenter:Llenovo/widget/Toolbar$ExpandedActionViewMenuPresenter;

    .line 798
    :cond_0
    iget-object v1, p0, Llenovo/widget/Toolbar;->mMenuView:Llenovo/widget/ActionMenuView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Llenovo/widget/ActionMenuView;->setExpandedActionViewsExclusive(Z)V

    .line 799
    iget-object v1, p0, Llenovo/widget/Toolbar;->mExpandedMenuPresenter:Llenovo/widget/Toolbar$ExpandedActionViewMenuPresenter;

    iget-object v2, p0, Llenovo/widget/Toolbar;->mPopupContext:Landroid/content/Context;

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/internal/view/menu/MenuBuilder;->addMenuPresenter(Lcom/lenovo/internal/view/menu/MenuPresenter;Landroid/content/Context;)V

    .line 801
    .end local v0    # "menu":Lcom/lenovo/internal/view/menu/MenuBuilder;
    :cond_1
    return-void
.end method

.method private ensureMenuView()V
    .locals 4

    .prologue
    .line 804
    iget-object v1, p0, Llenovo/widget/Toolbar;->mMenuView:Llenovo/widget/ActionMenuView;

    if-nez v1, :cond_0

    .line 805
    new-instance v1, Llenovo/widget/ActionMenuView;

    invoke-virtual {p0}, Llenovo/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Llenovo/widget/ActionMenuView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Llenovo/widget/Toolbar;->mMenuView:Llenovo/widget/ActionMenuView;

    .line 806
    iget-object v1, p0, Llenovo/widget/Toolbar;->mMenuView:Llenovo/widget/ActionMenuView;

    iget v2, p0, Llenovo/widget/Toolbar;->mPopupTheme:I

    invoke-virtual {v1, v2}, Llenovo/widget/ActionMenuView;->setPopupTheme(I)V

    .line 807
    iget-object v1, p0, Llenovo/widget/Toolbar;->mMenuView:Llenovo/widget/ActionMenuView;

    iget-object v2, p0, Llenovo/widget/Toolbar;->mMenuViewItemClickListener:Llenovo/widget/ActionMenuView$OnMenuItemClickListener;

    invoke-virtual {v1, v2}, Llenovo/widget/ActionMenuView;->setOnMenuItemClickListener(Llenovo/widget/ActionMenuView$OnMenuItemClickListener;)V

    .line 808
    iget-object v1, p0, Llenovo/widget/Toolbar;->mMenuView:Llenovo/widget/ActionMenuView;

    iget-object v2, p0, Llenovo/widget/Toolbar;->mActionMenuPresenterCallback:Lcom/lenovo/internal/view/menu/MenuPresenter$Callback;

    iget-object v3, p0, Llenovo/widget/Toolbar;->mMenuBuilderCallback:Lcom/lenovo/internal/view/menu/MenuBuilder$Callback;

    invoke-virtual {v1, v2, v3}, Llenovo/widget/ActionMenuView;->setMenuCallbacks(Lcom/lenovo/internal/view/menu/MenuPresenter$Callback;Lcom/lenovo/internal/view/menu/MenuBuilder$Callback;)V

    .line 809
    invoke-virtual {p0}, Llenovo/widget/Toolbar;->generateDefaultLayoutParams()Llenovo/widget/Toolbar$LayoutParams;

    move-result-object v0

    .line 810
    .local v0, "lp":Llenovo/widget/Toolbar$LayoutParams;
    const v1, 0x800005

    iget v2, p0, Llenovo/widget/Toolbar;->mButtonGravity:I

    and-int/lit8 v2, v2, 0x70

    or-int/2addr v1, v2

    iput v1, v0, Llenovo/widget/Toolbar$LayoutParams;->gravity:I

    .line 811
    iget-object v1, p0, Llenovo/widget/Toolbar;->mMenuView:Llenovo/widget/ActionMenuView;

    invoke-virtual {v1, v0}, Llenovo/widget/ActionMenuView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 812
    iget-object v1, p0, Llenovo/widget/Toolbar;->mMenuView:Llenovo/widget/ActionMenuView;

    invoke-direct {p0, v1}, Llenovo/widget/Toolbar;->addSystemView(Landroid/view/View;)V

    .line 814
    .end local v0    # "lp":Llenovo/widget/Toolbar$LayoutParams;
    :cond_0
    return-void
.end method

.method private ensureNavButtonView()V
    .locals 7

    .prologue
    .line 961
    iget-object v4, p0, Llenovo/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    if-nez v4, :cond_1

    .line 965
    new-instance v4, Landroid/widget/ImageButton;

    invoke-virtual {p0}, Llenovo/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Llenovo/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    .line 966
    iget-object v4, p0, Llenovo/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    sget-object v5, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 967
    iget-object v4, p0, Llenovo/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Llenovo/widget/Toolbar;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x9080036

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setMinimumWidth(I)V

    .line 968
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x15

    if-lt v4, v5, :cond_2

    .line 969
    iget-object v4, p0, Llenovo/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    const v5, 0x902000e

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 979
    :cond_0
    :goto_0
    invoke-virtual {p0}, Llenovo/widget/Toolbar;->generateDefaultLayoutParams()Llenovo/widget/Toolbar$LayoutParams;

    move-result-object v2

    .line 980
    .local v2, "lp":Llenovo/widget/Toolbar$LayoutParams;
    const v4, 0x800003

    iget v5, p0, Llenovo/widget/Toolbar;->mButtonGravity:I

    and-int/lit8 v5, v5, 0x70

    or-int/2addr v4, v5

    iput v4, v2, Llenovo/widget/Toolbar$LayoutParams;->gravity:I

    .line 981
    iget-object v4, p0, Llenovo/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v4, v2}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 983
    .end local v2    # "lp":Llenovo/widget/Toolbar$LayoutParams;
    :cond_1
    return-void

    .line 971
    :cond_2
    new-instance v3, Landroid/util/TypedValue;

    invoke-direct {v3}, Landroid/util/TypedValue;-><init>()V

    .line 972
    .local v3, "tValue":Landroid/util/TypedValue;
    invoke-virtual {p0}, Llenovo/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    const v5, 0x101030e

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v3, v6}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v1

    .line 973
    .local v1, "hasArr":Z
    if-eqz v1, :cond_0

    iget v4, v3, Landroid/util/TypedValue;->resourceId:I

    if-eqz v4, :cond_0

    .line 974
    invoke-virtual {p0}, Llenovo/widget/Toolbar;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget v5, v3, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 975
    .local v0, "background":Landroid/graphics/drawable/Drawable;
    iget-object v4, p0, Llenovo/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-static {v4, v0}, Lcom/lenovo/internal/widget/ViewUtils;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private getChildHorizontalGravity(I)I
    .locals 4
    .param p1, "gravity"    # I

    .prologue
    .line 1641
    invoke-static {p0}, Lcom/lenovo/internal/widget/ViewUtils;->getLayoutDirection(Landroid/view/View;)I

    move-result v2

    .line 1642
    .local v2, "ld":I
    invoke-static {p1, v2}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v0

    .line 1643
    .local v0, "absGrav":I
    and-int/lit8 v1, v0, 0x7

    .line 1644
    .local v1, "hGrav":I
    packed-switch v1, :pswitch_data_0

    .line 1650
    :pswitch_0
    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    const/4 v3, 0x5

    :goto_0
    move v1, v3

    .end local v1    # "hGrav":I
    :pswitch_1
    return v1

    .restart local v1    # "hGrav":I
    :cond_0
    const/4 v3, 0x3

    goto :goto_0

    .line 1644
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getChildTop(Landroid/view/View;I)I
    .locals 11
    .param p1, "child"    # Landroid/view/View;
    .param p2, "alignmentHeight"    # I

    .prologue
    const/4 v9, 0x0

    .line 1562
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Llenovo/widget/Toolbar$LayoutParams;

    .line 1563
    .local v3, "lp":Llenovo/widget/Toolbar$LayoutParams;
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 1564
    .local v1, "childHeight":I
    if-lez p2, :cond_1

    sub-int v10, v1, p2

    div-int/lit8 v0, v10, 0x2

    .line 1565
    .local v0, "alignmentOffset":I
    :goto_0
    iget v10, v3, Llenovo/widget/Toolbar$LayoutParams;->gravity:I

    invoke-direct {p0, v10}, Llenovo/widget/Toolbar;->getChildVerticalGravity(I)I

    move-result v10

    sparse-switch v10, :sswitch_data_0

    .line 1575
    invoke-virtual {p0}, Llenovo/widget/Toolbar;->getPaddingTop()I

    move-result v5

    .line 1576
    .local v5, "paddingTop":I
    invoke-virtual {p0}, Llenovo/widget/Toolbar;->getPaddingBottom()I

    move-result v4

    .line 1577
    .local v4, "paddingBottom":I
    invoke-virtual {p0}, Llenovo/widget/Toolbar;->getHeight()I

    move-result v2

    .line 1578
    .local v2, "height":I
    sub-int v10, v2, v5

    sub-int v6, v10, v4

    .line 1579
    .local v6, "space":I
    sub-int v10, v6, v1

    div-int/lit8 v7, v10, 0x2

    .line 1580
    .local v7, "spaceAbove":I
    iget v10, v3, Llenovo/widget/Toolbar$LayoutParams;->topMargin:I

    if-ge v7, v10, :cond_2

    .line 1581
    iget v7, v3, Llenovo/widget/Toolbar$LayoutParams;->topMargin:I

    .line 1589
    :cond_0
    :goto_1
    add-int v9, v5, v7

    .end local v2    # "height":I
    .end local v4    # "paddingBottom":I
    .end local v5    # "paddingTop":I
    .end local v6    # "space":I
    .end local v7    # "spaceAbove":I
    :goto_2
    return v9

    .end local v0    # "alignmentOffset":I
    :cond_1
    move v0, v9

    .line 1564
    goto :goto_0

    .line 1567
    .restart local v0    # "alignmentOffset":I
    :sswitch_0
    invoke-virtual {p0}, Llenovo/widget/Toolbar;->getPaddingTop()I

    move-result v9

    sub-int/2addr v9, v0

    goto :goto_2

    .line 1570
    :sswitch_1
    invoke-virtual {p0}, Llenovo/widget/Toolbar;->getHeight()I

    move-result v9

    invoke-virtual {p0}, Llenovo/widget/Toolbar;->getPaddingBottom()I

    move-result v10

    sub-int/2addr v9, v10

    sub-int/2addr v9, v1

    iget v10, v3, Llenovo/widget/Toolbar$LayoutParams;->bottomMargin:I

    sub-int/2addr v9, v10

    sub-int/2addr v9, v0

    goto :goto_2

    .line 1583
    .restart local v2    # "height":I
    .restart local v4    # "paddingBottom":I
    .restart local v5    # "paddingTop":I
    .restart local v6    # "space":I
    .restart local v7    # "spaceAbove":I
    :cond_2
    sub-int v10, v2, v4

    sub-int/2addr v10, v1

    sub-int/2addr v10, v7

    sub-int v8, v10, v5

    .line 1585
    .local v8, "spaceBelow":I
    iget v10, v3, Llenovo/widget/Toolbar$LayoutParams;->bottomMargin:I

    if-ge v8, v10, :cond_0

    .line 1586
    iget v10, v3, Llenovo/widget/Toolbar$LayoutParams;->bottomMargin:I

    sub-int/2addr v10, v8

    sub-int v10, v7, v10

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v7

    goto :goto_1

    .line 1565
    :sswitch_data_0
    .sparse-switch
        0x30 -> :sswitch_0
        0x50 -> :sswitch_1
    .end sparse-switch
.end method

.method private getChildVerticalGravity(I)I
    .locals 2
    .param p1, "gravity"    # I

    .prologue
    .line 1594
    and-int/lit8 v0, p1, 0x70

    .line 1595
    .local v0, "vgrav":I
    sparse-switch v0, :sswitch_data_0

    .line 1601
    iget v1, p0, Llenovo/widget/Toolbar;->mGravity:I

    and-int/lit8 v0, v1, 0x70

    .end local v0    # "vgrav":I
    :sswitch_0
    return v0

    .line 1595
    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_0
        0x30 -> :sswitch_0
        0x50 -> :sswitch_0
    .end sparse-switch
.end method

.method private getHorizontalMargins(Landroid/view/View;)I
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1659
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1660
    .local v0, "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-virtual {v0}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I

    move-result v2

    add-int/2addr v1, v2

    return v1
.end method

.method private getMenuInflater()Landroid/view/MenuInflater;
    .locals 2

    .prologue
    .line 817
    new-instance v0, Lcom/lenovo/internal/view/SupportMenuInflater;

    invoke-virtual {p0}, Llenovo/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/lenovo/internal/view/SupportMenuInflater;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private getMinimumHeightCompat()I
    .locals 2

    .prologue
    .line 1755
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 1757
    invoke-virtual {p0}, Llenovo/widget/Toolbar;->getMinimumHeight()I

    move-result v0

    .line 1760
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Llenovo/widget/Toolbar;->mMinHeight:I

    goto :goto_0
.end method

.method private getVerticalMargins(Landroid/view/View;)I
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1665
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1666
    .local v0, "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v1, v2

    return v1
.end method

.method private getViewListMeasuredWidth(Ljava/util/List;[I)I
    .locals 13
    .param p2, "collapsingMargins"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;[I)I"
        }
    .end annotation

    .prologue
    .local p1, "views":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    const/4 v12, 0x0

    .line 1517
    aget v0, p2, v12

    .line 1518
    .local v0, "collapseLeft":I
    const/4 v11, 0x1

    aget v1, p2, v11

    .line 1519
    .local v1, "collapseRight":I
    const/4 v10, 0x0

    .line 1520
    .local v10, "width":I
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .line 1521
    .local v2, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_0

    .line 1522
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/View;

    .line 1523
    .local v9, "v":Landroid/view/View;
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Llenovo/widget/Toolbar$LayoutParams;

    .line 1524
    .local v6, "lp":Llenovo/widget/Toolbar$LayoutParams;
    iget v11, v6, Llenovo/widget/Toolbar$LayoutParams;->leftMargin:I

    sub-int v4, v11, v0

    .line 1525
    .local v4, "l":I
    iget v11, v6, Llenovo/widget/Toolbar$LayoutParams;->rightMargin:I

    sub-int v7, v11, v1

    .line 1526
    .local v7, "r":I
    invoke-static {v12, v4}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 1527
    .local v5, "leftMargin":I
    invoke-static {v12, v7}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 1528
    .local v8, "rightMargin":I
    neg-int v11, v4

    invoke-static {v12, v11}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1529
    neg-int v11, v7

    invoke-static {v12, v11}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1530
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    move-result v11

    add-int/2addr v11, v5

    add-int/2addr v11, v8

    add-int/2addr v10, v11

    .line 1521
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1532
    .end local v4    # "l":I
    .end local v5    # "leftMargin":I
    .end local v6    # "lp":Llenovo/widget/Toolbar$LayoutParams;
    .end local v7    # "r":I
    .end local v8    # "rightMargin":I
    .end local v9    # "v":Landroid/view/View;
    :cond_0
    return v10
.end method

.method private static isCustomView(Landroid/view/View;)Z
    .locals 1
    .param p0, "child"    # Landroid/view/View;

    .prologue
    .line 1698
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Llenovo/widget/Toolbar$LayoutParams;

    iget v0, v0, Llenovo/widget/Toolbar$LayoutParams;->mViewType:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private layoutChildLeft(Landroid/view/View;I[II)I
    .locals 7
    .param p1, "child"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "collapsingMargins"    # [I
    .param p4, "alignmentHeight"    # I

    .prologue
    const/4 v6, 0x0

    .line 1537
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Llenovo/widget/Toolbar$LayoutParams;

    .line 1538
    .local v2, "lp":Llenovo/widget/Toolbar$LayoutParams;
    iget v4, v2, Llenovo/widget/Toolbar$LayoutParams;->leftMargin:I

    aget v5, p3, v6

    sub-int v1, v4, v5

    .line 1539
    .local v1, "l":I
    invoke-static {v6, v1}, Ljava/lang/Math;->max(II)I

    move-result v4

    add-int/2addr p2, v4

    .line 1540
    neg-int v4, v1

    invoke-static {v6, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    aput v4, p3, v6

    .line 1541
    invoke-direct {p0, p1, p4}, Llenovo/widget/Toolbar;->getChildTop(Landroid/view/View;I)I

    move-result v3

    .line 1542
    .local v3, "top":I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 1543
    .local v0, "childWidth":I
    add-int v4, p2, v0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v5, v3

    invoke-virtual {p1, p2, v3, v4, v5}, Landroid/view/View;->layout(IIII)V

    .line 1544
    iget v4, v2, Llenovo/widget/Toolbar$LayoutParams;->rightMargin:I

    add-int/2addr v4, v0

    add-int/2addr p2, v4

    .line 1545
    return p2
.end method

.method private layoutChildRight(Landroid/view/View;I[II)I
    .locals 8
    .param p1, "child"    # Landroid/view/View;
    .param p2, "right"    # I
    .param p3, "collapsingMargins"    # [I
    .param p4, "alignmentHeight"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1550
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Llenovo/widget/Toolbar$LayoutParams;

    .line 1551
    .local v1, "lp":Llenovo/widget/Toolbar$LayoutParams;
    iget v4, v1, Llenovo/widget/Toolbar$LayoutParams;->rightMargin:I

    aget v5, p3, v7

    sub-int v2, v4, v5

    .line 1552
    .local v2, "r":I
    invoke-static {v6, v2}, Ljava/lang/Math;->max(II)I

    move-result v4

    sub-int/2addr p2, v4

    .line 1553
    neg-int v4, v2

    invoke-static {v6, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    aput v4, p3, v7

    .line 1554
    invoke-direct {p0, p1, p4}, Llenovo/widget/Toolbar;->getChildTop(Landroid/view/View;I)I

    move-result v3

    .line 1555
    .local v3, "top":I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 1556
    .local v0, "childWidth":I
    sub-int v4, p2, v0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v5, v3

    invoke-virtual {p1, v4, v3, p2, v5}, Landroid/view/View;->layout(IIII)V

    .line 1557
    iget v4, v1, Llenovo/widget/Toolbar$LayoutParams;->leftMargin:I

    add-int/2addr v4, v0

    sub-int/2addr p2, v4

    .line 1558
    return p2
.end method

.method private measureChildCollapseMargins(Landroid/view/View;IIII[I)I
    .locals 11
    .param p1, "child"    # Landroid/view/View;
    .param p2, "parentWidthMeasureSpec"    # I
    .param p3, "widthUsed"    # I
    .param p4, "parentHeightMeasureSpec"    # I
    .param p5, "heightUsed"    # I
    .param p6, "collapsingMargins"    # [I

    .prologue
    .line 1127
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1129
    .local v5, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v8, v5, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    const/4 v9, 0x0

    aget v9, p6, v9

    sub-int v3, v8, v9

    .line 1130
    .local v3, "leftDiff":I
    iget v8, v5, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    const/4 v9, 0x1

    aget v9, p6, v9

    sub-int v6, v8, v9

    .line 1131
    .local v6, "rightDiff":I
    const/4 v8, 0x0

    invoke-static {v8, v3}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 1132
    .local v4, "leftMargin":I
    const/4 v8, 0x0

    invoke-static {v8, v6}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 1133
    .local v7, "rightMargin":I
    add-int v2, v4, v7

    .line 1134
    .local v2, "hMargins":I
    const/4 v8, 0x0

    const/4 v9, 0x0

    neg-int v10, v3

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v9

    aput v9, p6, v8

    .line 1135
    const/4 v8, 0x1

    const/4 v9, 0x0

    neg-int v10, v6

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v9

    aput v9, p6, v8

    .line 1137
    invoke-virtual {p0}, Llenovo/widget/Toolbar;->getPaddingLeft()I

    move-result v8

    invoke-virtual {p0}, Llenovo/widget/Toolbar;->getPaddingRight()I

    move-result v9

    add-int/2addr v8, v9

    add-int/2addr v8, v2

    add-int/2addr v8, p3

    iget v9, v5, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-static {p2, v8, v9}, Llenovo/widget/Toolbar;->getChildMeasureSpec(III)I

    move-result v1

    .line 1139
    .local v1, "childWidthMeasureSpec":I
    invoke-virtual {p0}, Llenovo/widget/Toolbar;->getPaddingTop()I

    move-result v8

    invoke-virtual {p0}, Llenovo/widget/Toolbar;->getPaddingBottom()I

    move-result v9

    add-int/2addr v8, v9

    iget v9, v5, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v8, v9

    iget v9, v5, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v8, v9

    add-int v8, v8, p5

    iget v9, v5, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-static {p4, v8, v9}, Llenovo/widget/Toolbar;->getChildMeasureSpec(III)I

    move-result v0

    .line 1143
    .local v0, "childHeightMeasureSpec":I
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 1144
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    add-int/2addr v8, v2

    return v8
.end method

.method private measureChildConstrained(Landroid/view/View;IIIII)V
    .locals 8
    .param p1, "child"    # Landroid/view/View;
    .param p2, "parentWidthSpec"    # I
    .param p3, "widthUsed"    # I
    .param p4, "parentHeightSpec"    # I
    .param p5, "heightUsed"    # I
    .param p6, "heightConstraint"    # I

    .prologue
    const/high16 v7, 0x40000000    # 2.0f

    .line 1102
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1104
    .local v3, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-virtual {p0}, Llenovo/widget/Toolbar;->getPaddingLeft()I

    move-result v5

    invoke-virtual {p0}, Llenovo/widget/Toolbar;->getPaddingRight()I

    move-result v6

    add-int/2addr v5, v6

    iget v6, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v5, v6

    iget v6, v3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v5, v6

    add-int/2addr v5, p3

    iget v6, v3, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-static {p2, v5, v6}, Llenovo/widget/Toolbar;->getChildMeasureSpec(III)I

    move-result v2

    .line 1107
    .local v2, "childWidthSpec":I
    invoke-virtual {p0}, Llenovo/widget/Toolbar;->getPaddingTop()I

    move-result v5

    invoke-virtual {p0}, Llenovo/widget/Toolbar;->getPaddingBottom()I

    move-result v6

    add-int/2addr v5, v6

    iget v6, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v5, v6

    iget v6, v3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v5, v6

    add-int/2addr v5, p5

    iget v6, v3, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-static {p4, v5, v6}, Llenovo/widget/Toolbar;->getChildMeasureSpec(III)I

    move-result v1

    .line 1111
    .local v1, "childHeightSpec":I
    invoke-static {v1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 1112
    .local v0, "childHeightMode":I
    if-eq v0, v7, :cond_0

    if-ltz p6, :cond_0

    .line 1113
    if-eqz v0, :cond_1

    invoke-static {v1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    invoke-static {v5, p6}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 1116
    .local v4, "size":I
    :goto_0
    invoke-static {v4, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 1118
    .end local v4    # "size":I
    :cond_0
    invoke-virtual {p1, v2, v1}, Landroid/view/View;->measure(II)V

    .line 1119
    return-void

    :cond_1
    move v4, p6

    .line 1113
    goto :goto_0
.end method

.method private postShowOverflowMenu()V
    .locals 1

    .prologue
    .line 1064
    iget-object v0, p0, Llenovo/widget/Toolbar;->mShowOverflowMenuRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Llenovo/widget/Toolbar;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1065
    iget-object v0, p0, Llenovo/widget/Toolbar;->mShowOverflowMenuRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Llenovo/widget/Toolbar;->post(Ljava/lang/Runnable;)Z

    .line 1066
    return-void
.end method

.method private setChildVisibilityForExpandedActionView(Z)V
    .locals 6
    .param p1, "expand"    # Z

    .prologue
    .line 1710
    invoke-virtual {p0}, Llenovo/widget/Toolbar;->getChildCount()I

    move-result v1

    .line 1711
    .local v1, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 1712
    invoke-virtual {p0, v2}, Llenovo/widget/Toolbar;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1713
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Llenovo/widget/Toolbar$LayoutParams;

    .line 1714
    .local v3, "lp":Llenovo/widget/Toolbar$LayoutParams;
    iget v4, v3, Llenovo/widget/Toolbar$LayoutParams;->mViewType:I

    const/4 v5, 0x2

    if-eq v4, v5, :cond_0

    iget-object v4, p0, Llenovo/widget/Toolbar;->mMenuView:Llenovo/widget/ActionMenuView;

    if-eq v0, v4, :cond_0

    .line 1715
    if-eqz p1, :cond_1

    const/16 v4, 0x8

    :goto_1
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1711
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1715
    :cond_1
    const/4 v4, 0x0

    goto :goto_1

    .line 1718
    .end local v0    # "child":Landroid/view/View;
    .end local v3    # "lp":Llenovo/widget/Toolbar$LayoutParams;
    :cond_2
    return-void
.end method

.method private shouldCollapse()Z
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 1151
    iget-boolean v4, p0, Llenovo/widget/Toolbar;->mCollapsible:Z

    if-nez v4, :cond_1

    .line 1161
    :cond_0
    :goto_0
    return v3

    .line 1153
    :cond_1
    invoke-virtual {p0}, Llenovo/widget/Toolbar;->getChildCount()I

    move-result v1

    .line 1154
    .local v1, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v1, :cond_3

    .line 1155
    invoke-virtual {p0, v2}, Llenovo/widget/Toolbar;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1156
    .local v0, "child":Landroid/view/View;
    invoke-direct {p0, v0}, Llenovo/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    if-lez v4, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    if-gtz v4, :cond_0

    .line 1154
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1161
    .end local v0    # "child":Landroid/view/View;
    :cond_3
    const/4 v3, 0x1

    goto :goto_0
.end method

.method private shouldLayout(Landroid/view/View;)Z
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1655
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-ne v0, p0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static themifyContext(Landroid/content/Context;Landroid/util/AttributeSet;I)Landroid/content/Context;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "attrs"    # Landroid/util/AttributeSet;
    .param p2, "defStyleAttr"    # I

    .prologue
    const/4 v4, 0x0

    .line 2003
    sget-object v3, Lcom/lenovo/internal/R$styleable;->ActionBar:[I

    invoke-virtual {p0, p1, v3, p2, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 2005
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v4, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 2006
    .local v2, "themeId":I
    if-eqz v2, :cond_0

    .line 2007
    new-instance v1, Landroid/view/ContextThemeWrapper;

    invoke-direct {v1, p0, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .end local p0    # "context":Landroid/content/Context;
    .local v1, "context":Landroid/content/Context;
    move-object p0, v1

    .line 2009
    .end local v1    # "context":Landroid/content/Context;
    .restart local p0    # "context":Landroid/content/Context;
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 2010
    return-object p0
.end method

.method private updateChildVisibilityForExpandedActionView(Landroid/view/View;)V
    .locals 3
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 1721
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Llenovo/widget/Toolbar$LayoutParams;

    .line 1722
    .local v0, "lp":Llenovo/widget/Toolbar$LayoutParams;
    iget v1, v0, Llenovo/widget/Toolbar$LayoutParams;->mViewType:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Llenovo/widget/Toolbar;->mMenuView:Llenovo/widget/ActionMenuView;

    if-eq p1, v1, :cond_0

    .line 1723
    iget-object v1, p0, Llenovo/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    if-eqz v1, :cond_1

    const/16 v1, 0x8

    :goto_0
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1725
    :cond_0
    return-void

    .line 1723
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public canShowOverflowMenu()Z
    .locals 1

    .prologue
    .line 301
    invoke-virtual {p0}, Llenovo/widget/Toolbar;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Llenovo/widget/Toolbar;->mMenuView:Llenovo/widget/ActionMenuView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Llenovo/widget/Toolbar;->mMenuView:Llenovo/widget/ActionMenuView;

    invoke-virtual {v0}, Llenovo/widget/ActionMenuView;->isOverflowReserved()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 1694
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v0

    if-eqz v0, :cond_0

    instance-of v0, p1, Llenovo/widget/Toolbar$LayoutParams;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public collapseActionView()V
    .locals 2

    .prologue
    .line 506
    iget-object v1, p0, Llenovo/widget/Toolbar;->mExpandedMenuPresenter:Llenovo/widget/Toolbar$ExpandedActionViewMenuPresenter;

    if-nez v1, :cond_1

    const/4 v0, 0x0

    .line 508
    .local v0, "item":Lcom/lenovo/internal/view/menu/MenuItemImpl;
    :goto_0
    if-eqz v0, :cond_0

    .line 509
    invoke-virtual {v0}, Lcom/lenovo/internal/view/menu/MenuItemImpl;->collapseActionView()Z

    .line 511
    :cond_0
    return-void

    .line 506
    .end local v0    # "item":Lcom/lenovo/internal/view/menu/MenuItemImpl;
    :cond_1
    iget-object v1, p0, Llenovo/widget/Toolbar;->mExpandedMenuPresenter:Llenovo/widget/Toolbar$ExpandedActionViewMenuPresenter;

    iget-object v0, v1, Llenovo/widget/Toolbar$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcom/lenovo/internal/view/menu/MenuItemImpl;

    goto :goto_0
.end method

.method public dismissPopupMenus()V
    .locals 1

    .prologue
    .line 377
    iget-object v0, p0, Llenovo/widget/Toolbar;->mMenuView:Llenovo/widget/ActionMenuView;

    if-eqz v0, :cond_0

    .line 378
    iget-object v0, p0, Llenovo/widget/Toolbar;->mMenuView:Llenovo/widget/ActionMenuView;

    invoke-virtual {v0}, Llenovo/widget/ActionMenuView;->dismissPopupMenus()V

    .line 380
    :cond_0
    return-void
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 107
    invoke-virtual {p0}, Llenovo/widget/Toolbar;->generateDefaultLayoutParams()Llenovo/widget/Toolbar$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateDefaultLayoutParams()Llenovo/widget/Toolbar$LayoutParams;
    .locals 2

    .prologue
    const/4 v1, -0x2

    .line 1689
    new-instance v0, Llenovo/widget/Toolbar$LayoutParams;

    invoke-direct {v0, v1, v1}, Llenovo/widget/Toolbar$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .param p1, "x0"    # Landroid/util/AttributeSet;

    .prologue
    .line 107
    invoke-virtual {p0, p1}, Llenovo/widget/Toolbar;->generateLayoutParams(Landroid/util/AttributeSet;)Llenovo/widget/Toolbar$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .param p1, "x0"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 107
    invoke-virtual {p0, p1}, Llenovo/widget/Toolbar;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Llenovo/widget/Toolbar$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Llenovo/widget/Toolbar$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 1671
    new-instance v0, Llenovo/widget/Toolbar$LayoutParams;

    invoke-virtual {p0}, Llenovo/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Llenovo/widget/Toolbar$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Llenovo/widget/Toolbar$LayoutParams;
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 1676
    instance-of v0, p1, Llenovo/widget/Toolbar$LayoutParams;

    if-eqz v0, :cond_0

    .line 1677
    new-instance v0, Llenovo/widget/Toolbar$LayoutParams;

    check-cast p1, Llenovo/widget/Toolbar$LayoutParams;

    .end local p1    # "p":Landroid/view/ViewGroup$LayoutParams;
    invoke-direct {v0, p1}, Llenovo/widget/Toolbar$LayoutParams;-><init>(Llenovo/widget/Toolbar$LayoutParams;)V

    .line 1683
    :goto_0
    return-object v0

    .line 1678
    .restart local p1    # "p":Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    instance-of v0, p1, Landroid/app/ActionBar$LayoutParams;

    if-eqz v0, :cond_1

    .line 1679
    new-instance v0, Llenovo/widget/Toolbar$LayoutParams;

    check-cast p1, Landroid/app/ActionBar$LayoutParams;

    .end local p1    # "p":Landroid/view/ViewGroup$LayoutParams;
    invoke-direct {v0, p1}, Llenovo/widget/Toolbar$LayoutParams;-><init>(Landroid/app/ActionBar$LayoutParams;)V

    goto :goto_0

    .line 1680
    .restart local p1    # "p":Landroid/view/ViewGroup$LayoutParams;
    :cond_1
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_2

    .line 1681
    new-instance v0, Llenovo/widget/Toolbar$LayoutParams;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .end local p1    # "p":Landroid/view/ViewGroup$LayoutParams;
    invoke-direct {v0, p1}, Llenovo/widget/Toolbar$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    goto :goto_0

    .line 1683
    .restart local p1    # "p":Landroid/view/ViewGroup$LayoutParams;
    :cond_2
    new-instance v0, Llenovo/widget/Toolbar$LayoutParams;

    invoke-direct {v0, p1}, Llenovo/widget/Toolbar$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public getContentInsetEnd()I
    .locals 1

    .prologue
    .line 899
    iget-object v0, p0, Llenovo/widget/Toolbar;->mContentInsets:Lcom/lenovo/internal/widget/RtlSpacingHelper;

    invoke-virtual {v0}, Lcom/lenovo/internal/widget/RtlSpacingHelper;->getEnd()I

    move-result v0

    return v0
.end method

.method public getContentInsetLeft()I
    .locals 1

    .prologue
    .line 938
    iget-object v0, p0, Llenovo/widget/Toolbar;->mContentInsets:Lcom/lenovo/internal/widget/RtlSpacingHelper;

    invoke-virtual {v0}, Lcom/lenovo/internal/widget/RtlSpacingHelper;->getLeft()I

    move-result v0

    return v0
.end method

.method public getContentInsetRight()I
    .locals 1

    .prologue
    .line 957
    iget-object v0, p0, Llenovo/widget/Toolbar;->mContentInsets:Lcom/lenovo/internal/widget/RtlSpacingHelper;

    invoke-virtual {v0}, Lcom/lenovo/internal/widget/RtlSpacingHelper;->getRight()I

    move-result v0

    return v0
.end method

.method public getContentInsetStart()I
    .locals 1

    .prologue
    .line 880
    iget-object v0, p0, Llenovo/widget/Toolbar;->mContentInsets:Lcom/lenovo/internal/widget/RtlSpacingHelper;

    invoke-virtual {v0}, Lcom/lenovo/internal/widget/RtlSpacingHelper;->getStart()I

    move-result v0

    return v0
.end method

.method public getLogo()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 434
    iget-object v0, p0, Llenovo/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Llenovo/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLogoDescription()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 472
    iget-object v0, p0, Llenovo/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Llenovo/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMenu()Landroid/view/Menu;
    .locals 1

    .prologue
    .line 786
    invoke-direct {p0}, Llenovo/widget/Toolbar;->ensureMenu()V

    .line 787
    iget-object v0, p0, Llenovo/widget/Toolbar;->mMenuView:Llenovo/widget/ActionMenuView;

    invoke-virtual {v0}, Llenovo/widget/ActionMenuView;->getMenu()Landroid/view/Menu;

    move-result-object v0

    return-object v0
.end method

.method public getNavigationContentDescription()Ljava/lang/CharSequence;
    .locals 1
    .annotation build Llenovo/annotation/Nullable;
    .end annotation

    .prologue
    .line 678
    iget-object v0, p0, Llenovo/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Llenovo/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getNavigationIcon()Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation build Llenovo/annotation/Nullable;
    .end annotation

    .prologue
    .line 760
    iget-object v0, p0, Llenovo/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Llenovo/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPopupTheme()I
    .locals 1

    .prologue
    .line 276
    iget v0, p0, Llenovo/widget/Toolbar;->mPopupTheme:I

    return v0
.end method

.method public getSubtitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 575
    iget-object v0, p0, Llenovo/widget/Toolbar;->mSubtitleText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 519
    iget-object v0, p0, Llenovo/widget/Toolbar;->mTitleText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getWrapper()Lcom/lenovo/internal/widget/DecorToolbar;
    .locals 2

    .prologue
    .line 1703
    iget-object v0, p0, Llenovo/widget/Toolbar;->mWrapper:Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;

    if-nez v0, :cond_0

    .line 1704
    new-instance v0, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;-><init>(Llenovo/widget/Toolbar;Z)V

    iput-object v0, p0, Llenovo/widget/Toolbar;->mWrapper:Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;

    .line 1706
    :cond_0
    iget-object v0, p0, Llenovo/widget/Toolbar;->mWrapper:Lcom/lenovo/internal/widget/ToolbarWidgetWrapper;

    return-object v0
.end method

.method public hasExpandedActionView()Z
    .locals 1

    .prologue
    .line 492
    iget-object v0, p0, Llenovo/widget/Toolbar;->mExpandedMenuPresenter:Llenovo/widget/Toolbar$ExpandedActionViewMenuPresenter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Llenovo/widget/Toolbar;->mExpandedMenuPresenter:Llenovo/widget/Toolbar$ExpandedActionViewMenuPresenter;

    iget-object v0, v0, Llenovo/widget/Toolbar$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcom/lenovo/internal/view/menu/MenuItemImpl;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hideOverflowMenu()Z
    .locals 1

    .prologue
    .line 334
    iget-object v0, p0, Llenovo/widget/Toolbar;->mMenuView:Llenovo/widget/ActionMenuView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Llenovo/widget/Toolbar;->mMenuView:Llenovo/widget/ActionMenuView;

    invoke-virtual {v0}, Llenovo/widget/ActionMenuView;->hideOverflowMenu()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public inflateMenu(I)V
    .locals 2
    .param p1, "resId"    # I

    .prologue
    .line 829
    invoke-direct {p0}, Llenovo/widget/Toolbar;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    invoke-virtual {p0}, Llenovo/widget/Toolbar;->getMenu()Landroid/view/Menu;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 830
    return-void
.end method

.method public isOverflowMenuShowPending()Z
    .locals 1

    .prologue
    .line 316
    iget-object v0, p0, Llenovo/widget/Toolbar;->mMenuView:Llenovo/widget/ActionMenuView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Llenovo/widget/Toolbar;->mMenuView:Llenovo/widget/ActionMenuView;

    invoke-virtual {v0}, Llenovo/widget/ActionMenuView;->isOverflowMenuShowPending()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOverflowMenuShowing()Z
    .locals 1

    .prologue
    .line 311
    iget-object v0, p0, Llenovo/widget/Toolbar;->mMenuView:Llenovo/widget/ActionMenuView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Llenovo/widget/Toolbar;->mMenuView:Llenovo/widget/ActionMenuView;

    invoke-virtual {v0}, Llenovo/widget/ActionMenuView;->isOverflowMenuShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTitleTruncated()Z
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 384
    iget-object v4, p0, Llenovo/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    if-nez v4, :cond_1

    .line 399
    :cond_0
    :goto_0
    return v3

    .line 388
    :cond_1
    iget-object v4, p0, Llenovo/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    .line 389
    .local v2, "titleLayout":Landroid/text/Layout;
    if-eqz v2, :cond_0

    .line 393
    invoke-virtual {v2}, Landroid/text/Layout;->getLineCount()I

    move-result v1

    .line 394
    .local v1, "lineCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_0

    .line 395
    invoke-virtual {v2, v0}, Landroid/text/Layout;->getEllipsisCount(I)I

    move-result v4

    if-lez v4, :cond_2

    .line 396
    const/4 v3, 0x1

    goto :goto_0

    .line 394
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 1070
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 1071
    iget-object v0, p0, Llenovo/widget/Toolbar;->mShowOverflowMenuRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Llenovo/widget/Toolbar;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1072
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 50
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 1302
    invoke-static/range {p0 .. p0}, Lcom/lenovo/internal/widget/ViewUtils;->getLayoutDirection(Landroid/view/View;)I

    move-result v46

    const/16 v47, 0x1

    move/from16 v0, v46

    move/from16 v1, v47

    if-ne v0, v1, :cond_e

    const/16 v16, 0x1

    .line 1303
    .local v16, "isRtl":Z
    :goto_0
    invoke-virtual/range {p0 .. p0}, Llenovo/widget/Toolbar;->getWidth()I

    move-result v45

    .line 1304
    .local v45, "width":I
    invoke-virtual/range {p0 .. p0}, Llenovo/widget/Toolbar;->getHeight()I

    move-result v14

    .line 1305
    .local v14, "height":I
    invoke-virtual/range {p0 .. p0}, Llenovo/widget/Toolbar;->getPaddingLeft()I

    move-result v24

    .line 1306
    .local v24, "paddingLeft":I
    invoke-virtual/range {p0 .. p0}, Llenovo/widget/Toolbar;->getPaddingRight()I

    move-result v25

    .line 1307
    .local v25, "paddingRight":I
    invoke-virtual/range {p0 .. p0}, Llenovo/widget/Toolbar;->getPaddingTop()I

    move-result v26

    .line 1308
    .local v26, "paddingTop":I
    invoke-virtual/range {p0 .. p0}, Llenovo/widget/Toolbar;->getPaddingBottom()I

    move-result v23

    .line 1309
    .local v23, "paddingBottom":I
    move/from16 v20, v24

    .line 1310
    .local v20, "left":I
    sub-int v29, v45, v25

    .line 1312
    .local v29, "right":I
    move-object/from16 v0, p0

    iget-object v12, v0, Llenovo/widget/Toolbar;->mTempMargins:[I

    .line 1313
    .local v12, "collapsingMargins":[I
    const/16 v46, 0x0

    const/16 v47, 0x1

    const/16 v48, 0x0

    aput v48, v12, v47

    aput v48, v12, v46

    .line 1316
    invoke-direct/range {p0 .. p0}, Llenovo/widget/Toolbar;->getMinimumHeightCompat()I

    move-result v5

    .line 1318
    .local v5, "alignmentHeight":I
    move-object/from16 v0, p0

    iget-object v0, v0, Llenovo/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    move-object/from16 v46, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-direct {v0, v1}, Llenovo/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v46

    if-eqz v46, :cond_0

    .line 1319
    if-eqz v16, :cond_f

    .line 1320
    move-object/from16 v0, p0

    iget-object v0, v0, Llenovo/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    move-object/from16 v46, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    move/from16 v2, v29

    invoke-direct {v0, v1, v2, v12, v5}, Llenovo/widget/Toolbar;->layoutChildRight(Landroid/view/View;I[II)I

    move-result v29

    .line 1328
    :cond_0
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Llenovo/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    move-object/from16 v46, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-direct {v0, v1}, Llenovo/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v46

    if-eqz v46, :cond_1

    .line 1329
    if-eqz v16, :cond_10

    .line 1330
    move-object/from16 v0, p0

    iget-object v0, v0, Llenovo/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    move-object/from16 v46, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    move/from16 v2, v29

    invoke-direct {v0, v1, v2, v12, v5}, Llenovo/widget/Toolbar;->layoutChildRight(Landroid/view/View;I[II)I

    move-result v29

    .line 1338
    :cond_1
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Llenovo/widget/Toolbar;->mMenuView:Llenovo/widget/ActionMenuView;

    move-object/from16 v46, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-direct {v0, v1}, Llenovo/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v46

    if-eqz v46, :cond_2

    .line 1339
    if-eqz v16, :cond_11

    .line 1340
    move-object/from16 v0, p0

    iget-object v0, v0, Llenovo/widget/Toolbar;->mMenuView:Llenovo/widget/ActionMenuView;

    move-object/from16 v46, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    move/from16 v2, v20

    invoke-direct {v0, v1, v2, v12, v5}, Llenovo/widget/Toolbar;->layoutChildLeft(Landroid/view/View;I[II)I

    move-result v20

    .line 1348
    :cond_2
    :goto_3
    const/16 v46, 0x0

    const/16 v47, 0x0

    invoke-virtual/range {p0 .. p0}, Llenovo/widget/Toolbar;->getContentInsetLeft()I

    move-result v48

    sub-int v48, v48, v20

    invoke-static/range {v47 .. v48}, Ljava/lang/Math;->max(II)I

    move-result v47

    aput v47, v12, v46

    .line 1349
    const/16 v46, 0x1

    const/16 v47, 0x0

    invoke-virtual/range {p0 .. p0}, Llenovo/widget/Toolbar;->getContentInsetRight()I

    move-result v48

    sub-int v49, v45, v25

    sub-int v49, v49, v29

    sub-int v48, v48, v49

    invoke-static/range {v47 .. v48}, Ljava/lang/Math;->max(II)I

    move-result v47

    aput v47, v12, v46

    .line 1350
    invoke-virtual/range {p0 .. p0}, Llenovo/widget/Toolbar;->getContentInsetLeft()I

    move-result v46

    move/from16 v0, v20

    move/from16 v1, v46

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v20

    .line 1351
    sub-int v46, v45, v25

    invoke-virtual/range {p0 .. p0}, Llenovo/widget/Toolbar;->getContentInsetRight()I

    move-result v47

    sub-int v46, v46, v47

    move/from16 v0, v29

    move/from16 v1, v46

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v29

    .line 1353
    move-object/from16 v0, p0

    iget-object v0, v0, Llenovo/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    move-object/from16 v46, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-direct {v0, v1}, Llenovo/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v46

    if-eqz v46, :cond_3

    .line 1354
    if-eqz v16, :cond_12

    .line 1355
    move-object/from16 v0, p0

    iget-object v0, v0, Llenovo/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    move-object/from16 v46, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    move/from16 v2, v29

    invoke-direct {v0, v1, v2, v12, v5}, Llenovo/widget/Toolbar;->layoutChildRight(Landroid/view/View;I[II)I

    move-result v29

    .line 1363
    :cond_3
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Llenovo/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    move-object/from16 v46, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-direct {v0, v1}, Llenovo/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v46

    if-eqz v46, :cond_4

    .line 1364
    if-eqz v16, :cond_13

    .line 1365
    move-object/from16 v0, p0

    iget-object v0, v0, Llenovo/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    move-object/from16 v46, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    move/from16 v2, v29

    invoke-direct {v0, v1, v2, v12, v5}, Llenovo/widget/Toolbar;->layoutChildRight(Landroid/view/View;I[II)I

    move-result v29

    .line 1373
    :cond_4
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Llenovo/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    move-object/from16 v46, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-direct {v0, v1}, Llenovo/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v18

    .line 1374
    .local v18, "layoutTitle":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Llenovo/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    move-object/from16 v46, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-direct {v0, v1}, Llenovo/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v17

    .line 1375
    .local v17, "layoutSubtitle":Z
    const/16 v39, 0x0

    .line 1376
    .local v39, "titleHeight":I
    if-eqz v18, :cond_5

    .line 1377
    move-object/from16 v0, p0

    iget-object v0, v0, Llenovo/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v22

    check-cast v22, Llenovo/widget/Toolbar$LayoutParams;

    .line 1378
    .local v22, "lp":Llenovo/widget/Toolbar$LayoutParams;
    move-object/from16 v0, v22

    iget v0, v0, Llenovo/widget/Toolbar$LayoutParams;->topMargin:I

    move/from16 v46, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Llenovo/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v47

    add-int v46, v46, v47

    move-object/from16 v0, v22

    iget v0, v0, Llenovo/widget/Toolbar$LayoutParams;->bottomMargin:I

    move/from16 v47, v0

    add-int v46, v46, v47

    add-int v39, v39, v46

    .line 1380
    .end local v22    # "lp":Llenovo/widget/Toolbar$LayoutParams;
    :cond_5
    if-eqz v17, :cond_6

    .line 1381
    move-object/from16 v0, p0

    iget-object v0, v0, Llenovo/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v22

    check-cast v22, Llenovo/widget/Toolbar$LayoutParams;

    .line 1382
    .restart local v22    # "lp":Llenovo/widget/Toolbar$LayoutParams;
    move-object/from16 v0, v22

    iget v0, v0, Llenovo/widget/Toolbar$LayoutParams;->topMargin:I

    move/from16 v46, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Llenovo/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v47

    add-int v46, v46, v47

    move-object/from16 v0, v22

    iget v0, v0, Llenovo/widget/Toolbar$LayoutParams;->bottomMargin:I

    move/from16 v47, v0

    add-int v46, v46, v47

    add-int v39, v39, v46

    .line 1385
    .end local v22    # "lp":Llenovo/widget/Toolbar$LayoutParams;
    :cond_6
    if-nez v18, :cond_7

    if-eqz v17, :cond_d

    .line 1387
    :cond_7
    if-eqz v18, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Llenovo/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    move-object/from16 v43, v0

    .line 1388
    .local v43, "topChild":Landroid/view/View;
    :goto_6
    if-eqz v17, :cond_15

    move-object/from16 v0, p0

    iget-object v6, v0, Llenovo/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    .line 1389
    .local v6, "bottomChild":Landroid/view/View;
    :goto_7
    invoke-virtual/range {v43 .. v43}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v44

    check-cast v44, Llenovo/widget/Toolbar$LayoutParams;

    .line 1390
    .local v44, "toplp":Llenovo/widget/Toolbar$LayoutParams;
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Llenovo/widget/Toolbar$LayoutParams;

    .line 1391
    .local v7, "bottomlp":Llenovo/widget/Toolbar$LayoutParams;
    if-eqz v18, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Llenovo/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v46

    if-gtz v46, :cond_9

    :cond_8
    if-eqz v17, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Llenovo/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v46

    if-lez v46, :cond_16

    :cond_9
    const/16 v38, 0x1

    .line 1394
    .local v38, "titleHasWidth":Z
    :goto_8
    move-object/from16 v0, p0

    iget v0, v0, Llenovo/widget/Toolbar;->mGravity:I

    move/from16 v46, v0

    and-int/lit8 v46, v46, 0x70

    sparse-switch v46, :sswitch_data_0

    .line 1400
    sub-int v46, v14, v26

    sub-int v31, v46, v23

    .line 1401
    .local v31, "space":I
    sub-int v46, v31, v39

    div-int/lit8 v32, v46, 0x2

    .line 1402
    .local v32, "spaceAbove":I
    move-object/from16 v0, v44

    iget v0, v0, Llenovo/widget/Toolbar$LayoutParams;->topMargin:I

    move/from16 v46, v0

    move-object/from16 v0, p0

    iget v0, v0, Llenovo/widget/Toolbar;->mTitleMarginTop:I

    move/from16 v47, v0

    add-int v46, v46, v47

    move/from16 v0, v32

    move/from16 v1, v46

    if-ge v0, v1, :cond_17

    .line 1403
    move-object/from16 v0, v44

    iget v0, v0, Llenovo/widget/Toolbar$LayoutParams;->topMargin:I

    move/from16 v46, v0

    move-object/from16 v0, p0

    iget v0, v0, Llenovo/widget/Toolbar;->mTitleMarginTop:I

    move/from16 v47, v0

    add-int v32, v46, v47

    .line 1412
    :cond_a
    :goto_9
    add-int v42, v26, v32

    .line 1419
    .end local v31    # "space":I
    .end local v32    # "spaceAbove":I
    .local v42, "titleTop":I
    :goto_a
    if-eqz v16, :cond_19

    .line 1420
    if-eqz v38, :cond_18

    move-object/from16 v0, p0

    iget v0, v0, Llenovo/widget/Toolbar;->mTitleMarginStart:I

    move/from16 v46, v0

    :goto_b
    const/16 v47, 0x1

    aget v47, v12, v47

    sub-int v28, v46, v47

    .line 1421
    .local v28, "rd":I
    const/16 v46, 0x0

    move/from16 v0, v46

    move/from16 v1, v28

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v46

    sub-int v29, v29, v46

    .line 1422
    const/16 v46, 0x1

    const/16 v47, 0x0

    move/from16 v0, v28

    neg-int v0, v0

    move/from16 v48, v0

    invoke-static/range {v47 .. v48}, Ljava/lang/Math;->max(II)I

    move-result v47

    aput v47, v12, v46

    .line 1423
    move/from16 v41, v29

    .line 1424
    .local v41, "titleRight":I
    move/from16 v36, v29

    .line 1426
    .local v36, "subtitleRight":I
    if-eqz v18, :cond_b

    .line 1427
    move-object/from16 v0, p0

    iget-object v0, v0, Llenovo/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v22

    check-cast v22, Llenovo/widget/Toolbar$LayoutParams;

    .line 1428
    .restart local v22    # "lp":Llenovo/widget/Toolbar$LayoutParams;
    move-object/from16 v0, p0

    iget-object v0, v0, Llenovo/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v46

    sub-int v40, v41, v46

    .line 1429
    .local v40, "titleLeft":I
    move-object/from16 v0, p0

    iget-object v0, v0, Llenovo/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v46

    add-int v37, v42, v46

    .line 1430
    .local v37, "titleBottom":I
    move-object/from16 v0, p0

    iget-object v0, v0, Llenovo/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    move/from16 v1, v40

    move/from16 v2, v42

    move/from16 v3, v41

    move/from16 v4, v37

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->layout(IIII)V

    .line 1431
    move-object/from16 v0, p0

    iget v0, v0, Llenovo/widget/Toolbar;->mTitleMarginEnd:I

    move/from16 v46, v0

    sub-int v41, v40, v46

    .line 1432
    move-object/from16 v0, v22

    iget v0, v0, Llenovo/widget/Toolbar$LayoutParams;->bottomMargin:I

    move/from16 v46, v0

    add-int v42, v37, v46

    .line 1434
    .end local v22    # "lp":Llenovo/widget/Toolbar$LayoutParams;
    .end local v37    # "titleBottom":I
    .end local v40    # "titleLeft":I
    :cond_b
    if-eqz v17, :cond_c

    .line 1435
    move-object/from16 v0, p0

    iget-object v0, v0, Llenovo/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v22

    check-cast v22, Llenovo/widget/Toolbar$LayoutParams;

    .line 1436
    .restart local v22    # "lp":Llenovo/widget/Toolbar$LayoutParams;
    move-object/from16 v0, v22

    iget v0, v0, Llenovo/widget/Toolbar$LayoutParams;->topMargin:I

    move/from16 v46, v0

    add-int v42, v42, v46

    .line 1437
    move-object/from16 v0, p0

    iget-object v0, v0, Llenovo/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v46

    sub-int v35, v36, v46

    .line 1438
    .local v35, "subtitleLeft":I
    move-object/from16 v0, p0

    iget-object v0, v0, Llenovo/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v46

    add-int v34, v42, v46

    .line 1439
    .local v34, "subtitleBottom":I
    move-object/from16 v0, p0

    iget-object v0, v0, Llenovo/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    move/from16 v1, v35

    move/from16 v2, v42

    move/from16 v3, v36

    move/from16 v4, v34

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->layout(IIII)V

    .line 1440
    move-object/from16 v0, p0

    iget v0, v0, Llenovo/widget/Toolbar;->mTitleMarginEnd:I

    move/from16 v46, v0

    sub-int v36, v36, v46

    .line 1441
    move-object/from16 v0, v22

    iget v0, v0, Llenovo/widget/Toolbar$LayoutParams;->bottomMargin:I

    move/from16 v46, v0

    add-int v42, v34, v46

    .line 1443
    .end local v22    # "lp":Llenovo/widget/Toolbar$LayoutParams;
    .end local v34    # "subtitleBottom":I
    .end local v35    # "subtitleLeft":I
    :cond_c
    if-eqz v38, :cond_d

    .line 1444
    move/from16 v0, v41

    move/from16 v1, v36

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v29

    .line 1479
    .end local v6    # "bottomChild":Landroid/view/View;
    .end local v7    # "bottomlp":Llenovo/widget/Toolbar$LayoutParams;
    .end local v28    # "rd":I
    .end local v36    # "subtitleRight":I
    .end local v38    # "titleHasWidth":Z
    .end local v41    # "titleRight":I
    .end local v42    # "titleTop":I
    .end local v43    # "topChild":Landroid/view/View;
    .end local v44    # "toplp":Llenovo/widget/Toolbar$LayoutParams;
    :cond_d
    :goto_c
    move-object/from16 v0, p0

    iget-object v0, v0, Llenovo/widget/Toolbar;->mTempViews:Ljava/util/ArrayList;

    move-object/from16 v46, v0

    const/16 v47, 0x3

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    move/from16 v2, v47

    invoke-direct {v0, v1, v2}, Llenovo/widget/Toolbar;->addCustomViewsWithGravity(Ljava/util/List;I)V

    .line 1480
    move-object/from16 v0, p0

    iget-object v0, v0, Llenovo/widget/Toolbar;->mTempViews:Ljava/util/ArrayList;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Ljava/util/ArrayList;->size()I

    move-result v21

    .line 1481
    .local v21, "leftViewsCount":I
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_d
    move/from16 v0, v21

    if-ge v15, v0, :cond_1d

    .line 1482
    move-object/from16 v0, p0

    iget-object v0, v0, Llenovo/widget/Toolbar;->mTempViews:Ljava/util/ArrayList;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v46

    check-cast v46, Landroid/view/View;

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    move/from16 v2, v20

    invoke-direct {v0, v1, v2, v12, v5}, Llenovo/widget/Toolbar;->layoutChildLeft(Landroid/view/View;I[II)I

    move-result v20

    .line 1481
    add-int/lit8 v15, v15, 0x1

    goto :goto_d

    .line 1302
    .end local v5    # "alignmentHeight":I
    .end local v12    # "collapsingMargins":[I
    .end local v14    # "height":I
    .end local v15    # "i":I
    .end local v16    # "isRtl":Z
    .end local v17    # "layoutSubtitle":Z
    .end local v18    # "layoutTitle":Z
    .end local v20    # "left":I
    .end local v21    # "leftViewsCount":I
    .end local v23    # "paddingBottom":I
    .end local v24    # "paddingLeft":I
    .end local v25    # "paddingRight":I
    .end local v26    # "paddingTop":I
    .end local v29    # "right":I
    .end local v39    # "titleHeight":I
    .end local v45    # "width":I
    :cond_e
    const/16 v16, 0x0

    goto/16 :goto_0

    .line 1323
    .restart local v5    # "alignmentHeight":I
    .restart local v12    # "collapsingMargins":[I
    .restart local v14    # "height":I
    .restart local v16    # "isRtl":Z
    .restart local v20    # "left":I
    .restart local v23    # "paddingBottom":I
    .restart local v24    # "paddingLeft":I
    .restart local v25    # "paddingRight":I
    .restart local v26    # "paddingTop":I
    .restart local v29    # "right":I
    .restart local v45    # "width":I
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Llenovo/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    move-object/from16 v46, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    move/from16 v2, v20

    invoke-direct {v0, v1, v2, v12, v5}, Llenovo/widget/Toolbar;->layoutChildLeft(Landroid/view/View;I[II)I

    move-result v20

    goto/16 :goto_1

    .line 1333
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Llenovo/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    move-object/from16 v46, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    move/from16 v2, v20

    invoke-direct {v0, v1, v2, v12, v5}, Llenovo/widget/Toolbar;->layoutChildLeft(Landroid/view/View;I[II)I

    move-result v20

    goto/16 :goto_2

    .line 1343
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Llenovo/widget/Toolbar;->mMenuView:Llenovo/widget/ActionMenuView;

    move-object/from16 v46, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    move/from16 v2, v29

    invoke-direct {v0, v1, v2, v12, v5}, Llenovo/widget/Toolbar;->layoutChildRight(Landroid/view/View;I[II)I

    move-result v29

    goto/16 :goto_3

    .line 1358
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Llenovo/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    move-object/from16 v46, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    move/from16 v2, v20

    invoke-direct {v0, v1, v2, v12, v5}, Llenovo/widget/Toolbar;->layoutChildLeft(Landroid/view/View;I[II)I

    move-result v20

    goto/16 :goto_4

    .line 1368
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Llenovo/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    move-object/from16 v46, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    move/from16 v2, v20

    invoke-direct {v0, v1, v2, v12, v5}, Llenovo/widget/Toolbar;->layoutChildLeft(Landroid/view/View;I[II)I

    move-result v20

    goto/16 :goto_5

    .line 1387
    .restart local v17    # "layoutSubtitle":Z
    .restart local v18    # "layoutTitle":Z
    .restart local v39    # "titleHeight":I
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Llenovo/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    move-object/from16 v43, v0

    goto/16 :goto_6

    .line 1388
    .restart local v43    # "topChild":Landroid/view/View;
    :cond_15
    move-object/from16 v0, p0

    iget-object v6, v0, Llenovo/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    goto/16 :goto_7

    .line 1391
    .restart local v6    # "bottomChild":Landroid/view/View;
    .restart local v7    # "bottomlp":Llenovo/widget/Toolbar$LayoutParams;
    .restart local v44    # "toplp":Llenovo/widget/Toolbar$LayoutParams;
    :cond_16
    const/16 v38, 0x0

    goto/16 :goto_8

    .line 1396
    .restart local v38    # "titleHasWidth":Z
    :sswitch_0
    invoke-virtual/range {p0 .. p0}, Llenovo/widget/Toolbar;->getPaddingTop()I

    move-result v46

    move-object/from16 v0, v44

    iget v0, v0, Llenovo/widget/Toolbar$LayoutParams;->topMargin:I

    move/from16 v47, v0

    add-int v46, v46, v47

    move-object/from16 v0, p0

    iget v0, v0, Llenovo/widget/Toolbar;->mTitleMarginTop:I

    move/from16 v47, v0

    add-int v42, v46, v47

    .line 1397
    .restart local v42    # "titleTop":I
    goto/16 :goto_a

    .line 1405
    .end local v42    # "titleTop":I
    .restart local v31    # "space":I
    .restart local v32    # "spaceAbove":I
    :cond_17
    sub-int v46, v14, v23

    sub-int v46, v46, v39

    sub-int v46, v46, v32

    sub-int v33, v46, v26

    .line 1407
    .local v33, "spaceBelow":I
    move-object/from16 v0, v44

    iget v0, v0, Llenovo/widget/Toolbar$LayoutParams;->bottomMargin:I

    move/from16 v46, v0

    move-object/from16 v0, p0

    iget v0, v0, Llenovo/widget/Toolbar;->mTitleMarginBottom:I

    move/from16 v47, v0

    add-int v46, v46, v47

    move/from16 v0, v33

    move/from16 v1, v46

    if-ge v0, v1, :cond_a

    .line 1408
    const/16 v46, 0x0

    iget v0, v7, Llenovo/widget/Toolbar$LayoutParams;->bottomMargin:I

    move/from16 v47, v0

    move-object/from16 v0, p0

    iget v0, v0, Llenovo/widget/Toolbar;->mTitleMarginBottom:I

    move/from16 v48, v0

    add-int v47, v47, v48

    sub-int v47, v47, v33

    sub-int v47, v32, v47

    invoke-static/range {v46 .. v47}, Ljava/lang/Math;->max(II)I

    move-result v32

    goto/16 :goto_9

    .line 1415
    .end local v31    # "space":I
    .end local v32    # "spaceAbove":I
    .end local v33    # "spaceBelow":I
    :sswitch_1
    sub-int v46, v14, v23

    iget v0, v7, Llenovo/widget/Toolbar$LayoutParams;->bottomMargin:I

    move/from16 v47, v0

    sub-int v46, v46, v47

    move-object/from16 v0, p0

    iget v0, v0, Llenovo/widget/Toolbar;->mTitleMarginBottom:I

    move/from16 v47, v0

    sub-int v46, v46, v47

    sub-int v42, v46, v39

    .restart local v42    # "titleTop":I
    goto/16 :goto_a

    .line 1420
    :cond_18
    const/16 v46, 0x0

    goto/16 :goto_b

    .line 1447
    :cond_19
    if-eqz v38, :cond_1c

    move-object/from16 v0, p0

    iget v0, v0, Llenovo/widget/Toolbar;->mTitleMarginStart:I

    move/from16 v46, v0

    :goto_e
    const/16 v47, 0x0

    aget v47, v12, v47

    sub-int v19, v46, v47

    .line 1448
    .local v19, "ld":I
    const/16 v46, 0x0

    move/from16 v0, v46

    move/from16 v1, v19

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v46

    add-int v20, v20, v46

    .line 1449
    const/16 v46, 0x0

    const/16 v47, 0x0

    move/from16 v0, v19

    neg-int v0, v0

    move/from16 v48, v0

    invoke-static/range {v47 .. v48}, Ljava/lang/Math;->max(II)I

    move-result v47

    aput v47, v12, v46

    .line 1450
    move/from16 v40, v20

    .line 1451
    .restart local v40    # "titleLeft":I
    move/from16 v35, v20

    .line 1453
    .restart local v35    # "subtitleLeft":I
    if-eqz v18, :cond_1a

    .line 1454
    move-object/from16 v0, p0

    iget-object v0, v0, Llenovo/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v22

    check-cast v22, Llenovo/widget/Toolbar$LayoutParams;

    .line 1455
    .restart local v22    # "lp":Llenovo/widget/Toolbar$LayoutParams;
    move-object/from16 v0, p0

    iget-object v0, v0, Llenovo/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v46

    add-int v41, v40, v46

    .line 1456
    .restart local v41    # "titleRight":I
    move-object/from16 v0, p0

    iget-object v0, v0, Llenovo/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v46

    add-int v37, v42, v46

    .line 1457
    .restart local v37    # "titleBottom":I
    move-object/from16 v0, p0

    iget-object v0, v0, Llenovo/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    move/from16 v1, v40

    move/from16 v2, v42

    move/from16 v3, v41

    move/from16 v4, v37

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->layout(IIII)V

    .line 1458
    move-object/from16 v0, p0

    iget v0, v0, Llenovo/widget/Toolbar;->mTitleMarginEnd:I

    move/from16 v46, v0

    add-int v40, v41, v46

    .line 1459
    move-object/from16 v0, v22

    iget v0, v0, Llenovo/widget/Toolbar$LayoutParams;->bottomMargin:I

    move/from16 v46, v0

    add-int v42, v37, v46

    .line 1461
    .end local v22    # "lp":Llenovo/widget/Toolbar$LayoutParams;
    .end local v37    # "titleBottom":I
    .end local v41    # "titleRight":I
    :cond_1a
    if-eqz v17, :cond_1b

    .line 1462
    move-object/from16 v0, p0

    iget-object v0, v0, Llenovo/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v22

    check-cast v22, Llenovo/widget/Toolbar$LayoutParams;

    .line 1463
    .restart local v22    # "lp":Llenovo/widget/Toolbar$LayoutParams;
    move-object/from16 v0, v22

    iget v0, v0, Llenovo/widget/Toolbar$LayoutParams;->topMargin:I

    move/from16 v46, v0

    add-int v42, v42, v46

    .line 1464
    move-object/from16 v0, p0

    iget-object v0, v0, Llenovo/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v46

    add-int v36, v35, v46

    .line 1465
    .restart local v36    # "subtitleRight":I
    move-object/from16 v0, p0

    iget-object v0, v0, Llenovo/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v46

    add-int v34, v42, v46

    .line 1466
    .restart local v34    # "subtitleBottom":I
    move-object/from16 v0, p0

    iget-object v0, v0, Llenovo/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    move/from16 v1, v35

    move/from16 v2, v42

    move/from16 v3, v36

    move/from16 v4, v34

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->layout(IIII)V

    .line 1467
    move-object/from16 v0, p0

    iget v0, v0, Llenovo/widget/Toolbar;->mTitleMarginEnd:I

    move/from16 v46, v0

    add-int v35, v36, v46

    .line 1468
    move-object/from16 v0, v22

    iget v0, v0, Llenovo/widget/Toolbar$LayoutParams;->bottomMargin:I

    move/from16 v46, v0

    add-int v42, v34, v46

    .line 1470
    .end local v22    # "lp":Llenovo/widget/Toolbar$LayoutParams;
    .end local v34    # "subtitleBottom":I
    .end local v36    # "subtitleRight":I
    :cond_1b
    if-eqz v38, :cond_d

    .line 1471
    move/from16 v0, v40

    move/from16 v1, v35

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v20

    goto/16 :goto_c

    .line 1447
    .end local v19    # "ld":I
    .end local v35    # "subtitleLeft":I
    .end local v40    # "titleLeft":I
    :cond_1c
    const/16 v46, 0x0

    goto/16 :goto_e

    .line 1486
    .end local v6    # "bottomChild":Landroid/view/View;
    .end local v7    # "bottomlp":Llenovo/widget/Toolbar$LayoutParams;
    .end local v38    # "titleHasWidth":Z
    .end local v42    # "titleTop":I
    .end local v43    # "topChild":Landroid/view/View;
    .end local v44    # "toplp":Llenovo/widget/Toolbar$LayoutParams;
    .restart local v15    # "i":I
    .restart local v21    # "leftViewsCount":I
    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Llenovo/widget/Toolbar;->mTempViews:Ljava/util/ArrayList;

    move-object/from16 v46, v0

    const/16 v47, 0x5

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    move/from16 v2, v47

    invoke-direct {v0, v1, v2}, Llenovo/widget/Toolbar;->addCustomViewsWithGravity(Ljava/util/List;I)V

    .line 1487
    move-object/from16 v0, p0

    iget-object v0, v0, Llenovo/widget/Toolbar;->mTempViews:Ljava/util/ArrayList;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Ljava/util/ArrayList;->size()I

    move-result v30

    .line 1488
    .local v30, "rightViewsCount":I
    const/4 v15, 0x0

    :goto_f
    move/from16 v0, v30

    if-ge v15, v0, :cond_1e

    .line 1489
    move-object/from16 v0, p0

    iget-object v0, v0, Llenovo/widget/Toolbar;->mTempViews:Ljava/util/ArrayList;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v46

    check-cast v46, Landroid/view/View;

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    move/from16 v2, v29

    invoke-direct {v0, v1, v2, v12, v5}, Llenovo/widget/Toolbar;->layoutChildRight(Landroid/view/View;I[II)I

    move-result v29

    .line 1488
    add-int/lit8 v15, v15, 0x1

    goto :goto_f

    .line 1495
    :cond_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Llenovo/widget/Toolbar;->mTempViews:Ljava/util/ArrayList;

    move-object/from16 v46, v0

    const/16 v47, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    move/from16 v2, v47

    invoke-direct {v0, v1, v2}, Llenovo/widget/Toolbar;->addCustomViewsWithGravity(Ljava/util/List;I)V

    .line 1496
    move-object/from16 v0, p0

    iget-object v0, v0, Llenovo/widget/Toolbar;->mTempViews:Ljava/util/ArrayList;

    move-object/from16 v46, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-direct {v0, v1, v12}, Llenovo/widget/Toolbar;->getViewListMeasuredWidth(Ljava/util/List;[I)I

    move-result v11

    .line 1497
    .local v11, "centerViewsWidth":I
    sub-int v46, v45, v24

    sub-int v46, v46, v25

    div-int/lit8 v46, v46, 0x2

    add-int v27, v24, v46

    .line 1498
    .local v27, "parentCenter":I
    div-int/lit8 v13, v11, 0x2

    .line 1499
    .local v13, "halfCenterViewsWidth":I
    sub-int v8, v27, v13

    .line 1500
    .local v8, "centerLeft":I
    add-int v9, v8, v11

    .line 1501
    .local v9, "centerRight":I
    move/from16 v0, v20

    if-ge v8, v0, :cond_20

    .line 1502
    move/from16 v8, v20

    .line 1507
    :cond_1f
    :goto_10
    move-object/from16 v0, p0

    iget-object v0, v0, Llenovo/widget/Toolbar;->mTempViews:Ljava/util/ArrayList;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 1508
    .local v10, "centerViewsCount":I
    const/4 v15, 0x0

    :goto_11
    if-ge v15, v10, :cond_21

    .line 1509
    move-object/from16 v0, p0

    iget-object v0, v0, Llenovo/widget/Toolbar;->mTempViews:Ljava/util/ArrayList;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v46

    check-cast v46, Landroid/view/View;

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-direct {v0, v1, v8, v12, v5}, Llenovo/widget/Toolbar;->layoutChildLeft(Landroid/view/View;I[II)I

    move-result v8

    .line 1508
    add-int/lit8 v15, v15, 0x1

    goto :goto_11

    .line 1503
    .end local v10    # "centerViewsCount":I
    :cond_20
    move/from16 v0, v29

    if-le v9, v0, :cond_1f

    .line 1504
    sub-int v46, v9, v29

    sub-int v8, v8, v46

    goto :goto_10

    .line 1513
    .restart local v10    # "centerViewsCount":I
    :cond_21
    move-object/from16 v0, p0

    iget-object v0, v0, Llenovo/widget/Toolbar;->mTempViews:Ljava/util/ArrayList;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Ljava/util/ArrayList;->clear()V

    .line 1514
    return-void

    .line 1394
    nop

    :sswitch_data_0
    .sparse-switch
        0x30 -> :sswitch_0
        0x50 -> :sswitch_1
    .end sparse-switch
.end method

.method protected onMeasure(II)V
    .locals 37
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 1166
    const/4 v6, 0x0

    .line 1167
    .local v6, "width":I
    const/16 v25, 0x0

    .line 1168
    .local v25, "height":I
    const/16 v22, 0x0

    .line 1170
    .local v22, "childState":I
    move-object/from16 v0, p0

    iget-object v13, v0, Llenovo/widget/Toolbar;->mTempMargins:[I

    .line 1173
    .local v13, "collapsingMargins":[I
    invoke-static/range {p0 .. p0}, Lcom/lenovo/internal/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1174
    const/16 v29, 0x1

    .line 1175
    .local v29, "marginStartIndex":I
    const/16 v28, 0x0

    .line 1183
    .local v28, "marginEndIndex":I
    :goto_0
    const/16 v33, 0x0

    .line 1184
    .local v33, "navWidth":I
    move-object/from16 v0, p0

    iget-object v3, v0, Llenovo/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Llenovo/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1185
    move-object/from16 v0, p0

    iget-object v4, v0, Llenovo/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget v9, v0, Llenovo/widget/Toolbar;->mMaxButtonHeight:I

    move-object/from16 v3, p0

    move/from16 v5, p1

    move/from16 v7, p2

    invoke-direct/range {v3 .. v9}, Llenovo/widget/Toolbar;->measureChildConstrained(Landroid/view/View;IIIII)V

    .line 1187
    move-object/from16 v0, p0

    iget-object v3, v0, Llenovo/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v3}, Landroid/widget/ImageButton;->getMeasuredWidth()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v5, v0, Llenovo/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Llenovo/widget/Toolbar;->getHorizontalMargins(Landroid/view/View;)I

    move-result v5

    add-int v33, v3, v5

    .line 1188
    move-object/from16 v0, p0

    iget-object v3, v0, Llenovo/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v3}, Landroid/widget/ImageButton;->getMeasuredHeight()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v5, v0, Llenovo/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Llenovo/widget/Toolbar;->getVerticalMargins(Landroid/view/View;)I

    move-result v5

    add-int/2addr v3, v5

    move/from16 v0, v25

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v25

    .line 1190
    move-object/from16 v0, p0

    iget-object v3, v0, Llenovo/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v3}, Landroid/widget/ImageButton;->getMeasuredState()I

    move-result v3

    move/from16 v0, v22

    invoke-static {v0, v3}, Lcom/lenovo/internal/widget/ViewUtils;->combineMeasuredStates(II)I

    move-result v22

    .line 1194
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Llenovo/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Llenovo/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1195
    move-object/from16 v0, p0

    iget-object v4, v0, Llenovo/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget v9, v0, Llenovo/widget/Toolbar;->mMaxButtonHeight:I

    move-object/from16 v3, p0

    move/from16 v5, p1

    move/from16 v7, p2

    invoke-direct/range {v3 .. v9}, Llenovo/widget/Toolbar;->measureChildConstrained(Landroid/view/View;IIIII)V

    .line 1197
    move-object/from16 v0, p0

    iget-object v3, v0, Llenovo/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v3}, Landroid/widget/ImageButton;->getMeasuredWidth()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v5, v0, Llenovo/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Llenovo/widget/Toolbar;->getHorizontalMargins(Landroid/view/View;)I

    move-result v5

    add-int v33, v3, v5

    .line 1199
    move-object/from16 v0, p0

    iget-object v3, v0, Llenovo/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v3}, Landroid/widget/ImageButton;->getMeasuredHeight()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v5, v0, Llenovo/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Llenovo/widget/Toolbar;->getVerticalMargins(Landroid/view/View;)I

    move-result v5

    add-int/2addr v3, v5

    move/from16 v0, v25

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v25

    .line 1201
    move-object/from16 v0, p0

    iget-object v3, v0, Llenovo/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v3}, Landroid/widget/ImageButton;->getMeasuredState()I

    move-result v3

    move/from16 v0, v22

    invoke-static {v0, v3}, Lcom/lenovo/internal/widget/ViewUtils;->combineMeasuredStates(II)I

    move-result v22

    .line 1205
    :cond_1
    invoke-virtual/range {p0 .. p0}, Llenovo/widget/Toolbar;->getContentInsetStart()I

    move-result v24

    .line 1206
    .local v24, "contentInsetStart":I
    move/from16 v0, v24

    move/from16 v1, v33

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v3

    add-int/2addr v6, v3

    .line 1207
    const/4 v3, 0x0

    sub-int v5, v24, v33

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    aput v3, v13, v29

    .line 1209
    const/16 v32, 0x0

    .line 1210
    .local v32, "menuWidth":I
    move-object/from16 v0, p0

    iget-object v3, v0, Llenovo/widget/Toolbar;->mMenuView:Llenovo/widget/ActionMenuView;

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Llenovo/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1211
    move-object/from16 v0, p0

    iget-object v4, v0, Llenovo/widget/Toolbar;->mMenuView:Llenovo/widget/ActionMenuView;

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget v9, v0, Llenovo/widget/Toolbar;->mMaxButtonHeight:I

    move-object/from16 v3, p0

    move/from16 v5, p1

    move/from16 v7, p2

    invoke-direct/range {v3 .. v9}, Llenovo/widget/Toolbar;->measureChildConstrained(Landroid/view/View;IIIII)V

    .line 1213
    move-object/from16 v0, p0

    iget-object v3, v0, Llenovo/widget/Toolbar;->mMenuView:Llenovo/widget/ActionMenuView;

    invoke-virtual {v3}, Llenovo/widget/ActionMenuView;->getMeasuredWidth()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v5, v0, Llenovo/widget/Toolbar;->mMenuView:Llenovo/widget/ActionMenuView;

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Llenovo/widget/Toolbar;->getHorizontalMargins(Landroid/view/View;)I

    move-result v5

    add-int v32, v3, v5

    .line 1214
    move-object/from16 v0, p0

    iget-object v3, v0, Llenovo/widget/Toolbar;->mMenuView:Llenovo/widget/ActionMenuView;

    invoke-virtual {v3}, Llenovo/widget/ActionMenuView;->getMeasuredHeight()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v5, v0, Llenovo/widget/Toolbar;->mMenuView:Llenovo/widget/ActionMenuView;

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Llenovo/widget/Toolbar;->getVerticalMargins(Landroid/view/View;)I

    move-result v5

    add-int/2addr v3, v5

    move/from16 v0, v25

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v25

    .line 1216
    move-object/from16 v0, p0

    iget-object v3, v0, Llenovo/widget/Toolbar;->mMenuView:Llenovo/widget/ActionMenuView;

    invoke-virtual {v3}, Llenovo/widget/ActionMenuView;->getMeasuredState()I

    move-result v3

    move/from16 v0, v22

    invoke-static {v0, v3}, Lcom/lenovo/internal/widget/ViewUtils;->combineMeasuredStates(II)I

    move-result v22

    .line 1220
    :cond_2
    invoke-virtual/range {p0 .. p0}, Llenovo/widget/Toolbar;->getContentInsetEnd()I

    move-result v23

    .line 1221
    .local v23, "contentInsetEnd":I
    move/from16 v0, v23

    move/from16 v1, v32

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v3

    add-int/2addr v6, v3

    .line 1222
    const/4 v3, 0x0

    sub-int v5, v23, v32

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    aput v3, v13, v28

    .line 1224
    move-object/from16 v0, p0

    iget-object v3, v0, Llenovo/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Llenovo/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1225
    move-object/from16 v0, p0

    iget-object v4, v0, Llenovo/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    const/4 v8, 0x0

    move-object/from16 v3, p0

    move/from16 v5, p1

    move/from16 v7, p2

    move-object v9, v13

    invoke-direct/range {v3 .. v9}, Llenovo/widget/Toolbar;->measureChildCollapseMargins(Landroid/view/View;IIII[I)I

    move-result v3

    add-int/2addr v6, v3

    .line 1227
    move-object/from16 v0, p0

    iget-object v3, v0, Llenovo/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v5, v0, Llenovo/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Llenovo/widget/Toolbar;->getVerticalMargins(Landroid/view/View;)I

    move-result v5

    add-int/2addr v3, v5

    move/from16 v0, v25

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v25

    .line 1229
    move-object/from16 v0, p0

    iget-object v3, v0, Llenovo/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredState()I

    move-result v3

    move/from16 v0, v22

    invoke-static {v0, v3}, Lcom/lenovo/internal/widget/ViewUtils;->combineMeasuredStates(II)I

    move-result v22

    .line 1233
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Llenovo/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Llenovo/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1234
    move-object/from16 v0, p0

    iget-object v4, v0, Llenovo/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    const/4 v8, 0x0

    move-object/from16 v3, p0

    move/from16 v5, p1

    move/from16 v7, p2

    move-object v9, v13

    invoke-direct/range {v3 .. v9}, Llenovo/widget/Toolbar;->measureChildCollapseMargins(Landroid/view/View;IIII[I)I

    move-result v3

    add-int/2addr v6, v3

    .line 1236
    move-object/from16 v0, p0

    iget-object v3, v0, Llenovo/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v5, v0, Llenovo/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Llenovo/widget/Toolbar;->getVerticalMargins(Landroid/view/View;)I

    move-result v5

    add-int/2addr v3, v5

    move/from16 v0, v25

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v25

    .line 1238
    move-object/from16 v0, p0

    iget-object v3, v0, Llenovo/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getMeasuredState()I

    move-result v3

    move/from16 v0, v22

    invoke-static {v0, v3}, Lcom/lenovo/internal/widget/ViewUtils;->combineMeasuredStates(II)I

    move-result v22

    .line 1242
    :cond_4
    invoke-virtual/range {p0 .. p0}, Llenovo/widget/Toolbar;->getChildCount()I

    move-result v21

    .line 1243
    .local v21, "childCount":I
    const/16 v26, 0x0

    .local v26, "i":I
    :goto_1
    move/from16 v0, v26

    move/from16 v1, v21

    if-ge v0, v1, :cond_8

    .line 1244
    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Llenovo/widget/Toolbar;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1245
    .local v4, "child":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v27

    check-cast v27, Llenovo/widget/Toolbar$LayoutParams;

    .line 1246
    .local v27, "lp":Llenovo/widget/Toolbar$LayoutParams;
    move-object/from16 v0, v27

    iget v3, v0, Llenovo/widget/Toolbar$LayoutParams;->mViewType:I

    if-nez v3, :cond_5

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Llenovo/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 1243
    :cond_5
    :goto_2
    add-int/lit8 v26, v26, 0x1

    goto :goto_1

    .line 1177
    .end local v4    # "child":Landroid/view/View;
    .end local v21    # "childCount":I
    .end local v23    # "contentInsetEnd":I
    .end local v24    # "contentInsetStart":I
    .end local v26    # "i":I
    .end local v27    # "lp":Llenovo/widget/Toolbar$LayoutParams;
    .end local v28    # "marginEndIndex":I
    .end local v29    # "marginStartIndex":I
    .end local v32    # "menuWidth":I
    .end local v33    # "navWidth":I
    :cond_6
    const/16 v29, 0x0

    .line 1178
    .restart local v29    # "marginStartIndex":I
    const/16 v28, 0x1

    .restart local v28    # "marginEndIndex":I
    goto/16 :goto_0

    .line 1251
    .restart local v4    # "child":Landroid/view/View;
    .restart local v21    # "childCount":I
    .restart local v23    # "contentInsetEnd":I
    .restart local v24    # "contentInsetStart":I
    .restart local v26    # "i":I
    .restart local v27    # "lp":Llenovo/widget/Toolbar$LayoutParams;
    .restart local v32    # "menuWidth":I
    .restart local v33    # "navWidth":I
    :cond_7
    const/4 v8, 0x0

    move-object/from16 v3, p0

    move/from16 v5, p1

    move/from16 v7, p2

    move-object v9, v13

    invoke-direct/range {v3 .. v9}, Llenovo/widget/Toolbar;->measureChildCollapseMargins(Landroid/view/View;IIII[I)I

    move-result v3

    add-int/2addr v6, v3

    .line 1253
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Llenovo/widget/Toolbar;->getVerticalMargins(Landroid/view/View;)I

    move-result v5

    add-int/2addr v3, v5

    move/from16 v0, v25

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v25

    .line 1254
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredState()I

    move-result v3

    move/from16 v0, v22

    invoke-static {v0, v3}, Lcom/lenovo/internal/widget/ViewUtils;->combineMeasuredStates(II)I

    move-result v22

    goto :goto_2

    .line 1258
    .end local v4    # "child":Landroid/view/View;
    .end local v27    # "lp":Llenovo/widget/Toolbar$LayoutParams;
    :cond_8
    const/16 v36, 0x0

    .line 1259
    .local v36, "titleWidth":I
    const/16 v34, 0x0

    .line 1260
    .local v34, "titleHeight":I
    move-object/from16 v0, p0

    iget v3, v0, Llenovo/widget/Toolbar;->mTitleMarginTop:I

    move-object/from16 v0, p0

    iget v5, v0, Llenovo/widget/Toolbar;->mTitleMarginBottom:I

    add-int v12, v3, v5

    .line 1261
    .local v12, "titleVertMargins":I
    move-object/from16 v0, p0

    iget v3, v0, Llenovo/widget/Toolbar;->mTitleMarginStart:I

    move-object/from16 v0, p0

    iget v5, v0, Llenovo/widget/Toolbar;->mTitleMarginEnd:I

    add-int v35, v3, v5

    .line 1262
    .local v35, "titleHorizMargins":I
    move-object/from16 v0, p0

    iget-object v3, v0, Llenovo/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Llenovo/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 1263
    move-object/from16 v0, p0

    iget-object v8, v0, Llenovo/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    add-int v10, v6, v35

    move-object/from16 v7, p0

    move/from16 v9, p1

    move/from16 v11, p2

    invoke-direct/range {v7 .. v13}, Llenovo/widget/Toolbar;->measureChildCollapseMargins(Landroid/view/View;IIII[I)I

    move-result v36

    .line 1266
    move-object/from16 v0, p0

    iget-object v3, v0, Llenovo/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v5, v0, Llenovo/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Llenovo/widget/Toolbar;->getHorizontalMargins(Landroid/view/View;)I

    move-result v5

    add-int v36, v3, v5

    .line 1267
    move-object/from16 v0, p0

    iget-object v3, v0, Llenovo/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v5, v0, Llenovo/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Llenovo/widget/Toolbar;->getVerticalMargins(Landroid/view/View;)I

    move-result v5

    add-int v34, v3, v5

    .line 1268
    move-object/from16 v0, p0

    iget-object v3, v0, Llenovo/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getMeasuredState()I

    move-result v3

    move/from16 v0, v22

    invoke-static {v0, v3}, Lcom/lenovo/internal/widget/ViewUtils;->combineMeasuredStates(II)I

    move-result v22

    .line 1271
    :cond_9
    move-object/from16 v0, p0

    iget-object v3, v0, Llenovo/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Llenovo/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 1272
    move-object/from16 v0, p0

    iget-object v15, v0, Llenovo/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    add-int v17, v6, v35

    add-int v19, v34, v12

    move-object/from16 v14, p0

    move/from16 v16, p1

    move/from16 v18, p2

    move-object/from16 v20, v13

    invoke-direct/range {v14 .. v20}, Llenovo/widget/Toolbar;->measureChildCollapseMargins(Landroid/view/View;IIII[I)I

    move-result v3

    move/from16 v0, v36

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v36

    .line 1276
    move-object/from16 v0, p0

    iget-object v3, v0, Llenovo/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v5, v0, Llenovo/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Llenovo/widget/Toolbar;->getVerticalMargins(Landroid/view/View;)I

    move-result v5

    add-int/2addr v3, v5

    add-int v34, v34, v3

    .line 1278
    move-object/from16 v0, p0

    iget-object v3, v0, Llenovo/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getMeasuredState()I

    move-result v3

    move/from16 v0, v22

    invoke-static {v0, v3}, Lcom/lenovo/internal/widget/ViewUtils;->combineMeasuredStates(II)I

    move-result v22

    .line 1282
    :cond_a
    add-int v6, v6, v36

    .line 1283
    move/from16 v0, v25

    move/from16 v1, v34

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v25

    .line 1287
    invoke-virtual/range {p0 .. p0}, Llenovo/widget/Toolbar;->getPaddingLeft()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Llenovo/widget/Toolbar;->getPaddingRight()I

    move-result v5

    add-int/2addr v3, v5

    add-int/2addr v6, v3

    .line 1288
    invoke-virtual/range {p0 .. p0}, Llenovo/widget/Toolbar;->getPaddingTop()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Llenovo/widget/Toolbar;->getPaddingBottom()I

    move-result v5

    add-int/2addr v3, v5

    add-int v25, v25, v3

    .line 1290
    invoke-virtual/range {p0 .. p0}, Llenovo/widget/Toolbar;->getSuggestedMinimumWidth()I

    move-result v3

    invoke-static {v6, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    const/high16 v5, -0x1000000

    and-int v5, v5, v22

    move/from16 v0, p1

    invoke-static {v3, v0, v5}, Llenovo/widget/Toolbar;->resolveSizeAndState(III)I

    move-result v31

    .line 1293
    .local v31, "measuredWidth":I
    invoke-virtual/range {p0 .. p0}, Llenovo/widget/Toolbar;->getSuggestedMinimumHeight()I

    move-result v3

    move/from16 v0, v25

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    shl-int/lit8 v5, v22, 0x10

    move/from16 v0, p2

    invoke-static {v3, v0, v5}, Llenovo/widget/Toolbar;->resolveSizeAndState(III)I

    move-result v30

    .line 1297
    .local v30, "measuredHeight":I
    invoke-direct/range {p0 .. p0}, Llenovo/widget/Toolbar;->shouldCollapse()Z

    move-result v3

    if-eqz v3, :cond_b

    const/16 v30, 0x0

    .end local v30    # "measuredHeight":I
    :cond_b
    move-object/from16 v0, p0

    move/from16 v1, v31

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Llenovo/widget/Toolbar;->setMeasuredDimension(II)V

    .line 1298
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 4
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 1047
    move-object v2, p1

    check-cast v2, Llenovo/widget/Toolbar$SavedState;

    .line 1048
    .local v2, "ss":Llenovo/widget/Toolbar$SavedState;
    invoke-virtual {v2}, Llenovo/widget/Toolbar$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v3

    invoke-super {p0, v3}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1050
    iget-object v3, p0, Llenovo/widget/Toolbar;->mMenuView:Llenovo/widget/ActionMenuView;

    if-eqz v3, :cond_2

    iget-object v3, p0, Llenovo/widget/Toolbar;->mMenuView:Llenovo/widget/ActionMenuView;

    invoke-virtual {v3}, Llenovo/widget/ActionMenuView;->peekMenu()Lcom/lenovo/internal/view/menu/MenuBuilder;

    move-result-object v1

    .line 1051
    .local v1, "menu":Landroid/view/Menu;
    :goto_0
    iget v3, v2, Llenovo/widget/Toolbar$SavedState;->expandedMenuItemId:I

    if-eqz v3, :cond_0

    iget-object v3, p0, Llenovo/widget/Toolbar;->mExpandedMenuPresenter:Llenovo/widget/Toolbar$ExpandedActionViewMenuPresenter;

    if-eqz v3, :cond_0

    if-eqz v1, :cond_0

    .line 1052
    iget v3, v2, Llenovo/widget/Toolbar$SavedState;->expandedMenuItemId:I

    invoke-interface {v1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 1053
    .local v0, "item":Landroid/view/MenuItem;
    if-eqz v0, :cond_0

    .line 1054
    invoke-interface {v0}, Landroid/view/MenuItem;->expandActionView()Z

    .line 1058
    .end local v0    # "item":Landroid/view/MenuItem;
    :cond_0
    iget-boolean v3, v2, Llenovo/widget/Toolbar$SavedState;->isOverflowOpen:Z

    if-eqz v3, :cond_1

    .line 1059
    invoke-direct {p0}, Llenovo/widget/Toolbar;->postShowOverflowMenu()V

    .line 1061
    :cond_1
    return-void

    .line 1050
    .end local v1    # "menu":Landroid/view/Menu;
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 3
    .param p1, "layoutDirection"    # I

    .prologue
    const/4 v0, 0x1

    .line 280
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_0

    .line 281
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRtlPropertiesChanged(I)V

    .line 283
    :cond_0
    iget-object v1, p0, Llenovo/widget/Toolbar;->mContentInsets:Lcom/lenovo/internal/widget/RtlSpacingHelper;

    if-ne p1, v0, :cond_1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/lenovo/internal/widget/RtlSpacingHelper;->setDirection(Z)V

    .line 284
    return-void

    .line 283
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .prologue
    .line 1035
    new-instance v0, Llenovo/widget/Toolbar$SavedState;

    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-direct {v0, v1}, Llenovo/widget/Toolbar$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1037
    .local v0, "state":Llenovo/widget/Toolbar$SavedState;
    iget-object v1, p0, Llenovo/widget/Toolbar;->mExpandedMenuPresenter:Llenovo/widget/Toolbar$ExpandedActionViewMenuPresenter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Llenovo/widget/Toolbar;->mExpandedMenuPresenter:Llenovo/widget/Toolbar$ExpandedActionViewMenuPresenter;

    iget-object v1, v1, Llenovo/widget/Toolbar$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcom/lenovo/internal/view/menu/MenuItemImpl;

    if-eqz v1, :cond_0

    .line 1038
    iget-object v1, p0, Llenovo/widget/Toolbar;->mExpandedMenuPresenter:Llenovo/widget/Toolbar$ExpandedActionViewMenuPresenter;

    iget-object v1, v1, Llenovo/widget/Toolbar$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcom/lenovo/internal/view/menu/MenuItemImpl;

    invoke-virtual {v1}, Lcom/lenovo/internal/view/menu/MenuItemImpl;->getItemId()I

    move-result v1

    iput v1, v0, Llenovo/widget/Toolbar$SavedState;->expandedMenuItemId:I

    .line 1041
    :cond_0
    invoke-virtual {p0}, Llenovo/widget/Toolbar;->isOverflowMenuShowing()Z

    move-result v1

    iput-boolean v1, v0, Llenovo/widget/Toolbar$SavedState;->isOverflowOpen:Z

    .line 1042
    return-object v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1081
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 1082
    .local v0, "action":I
    if-nez v0, :cond_0

    .line 1083
    iput-boolean v4, p0, Llenovo/widget/Toolbar;->mEatingTouch:Z

    .line 1086
    :cond_0
    iget-boolean v2, p0, Llenovo/widget/Toolbar;->mEatingTouch:Z

    if-nez v2, :cond_1

    .line 1087
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 1088
    .local v1, "handled":Z
    if-nez v0, :cond_1

    if-nez v1, :cond_1

    .line 1089
    iput-boolean v3, p0, Llenovo/widget/Toolbar;->mEatingTouch:Z

    .line 1093
    .end local v1    # "handled":Z
    :cond_1
    if-eq v0, v3, :cond_2

    const/4 v2, 0x3

    if-ne v0, v2, :cond_3

    .line 1094
    :cond_2
    iput-boolean v4, p0, Llenovo/widget/Toolbar;->mEatingTouch:Z

    .line 1097
    :cond_3
    return v3
.end method

.method public setCollapsible(Z)V
    .locals 0
    .param p1, "collapsible"    # Z

    .prologue
    .line 1733
    iput-boolean p1, p0, Llenovo/widget/Toolbar;->mCollapsible:Z

    .line 1734
    invoke-virtual {p0}, Llenovo/widget/Toolbar;->requestLayout()V

    .line 1735
    return-void
.end method

.method public setContentInsetsAbsolute(II)V
    .locals 1
    .param p1, "contentInsetLeft"    # I
    .param p2, "contentInsetRight"    # I

    .prologue
    .line 919
    iget-object v0, p0, Llenovo/widget/Toolbar;->mContentInsets:Lcom/lenovo/internal/widget/RtlSpacingHelper;

    invoke-virtual {v0, p1, p2}, Lcom/lenovo/internal/widget/RtlSpacingHelper;->setAbsolute(II)V

    .line 920
    return-void
.end method

.method public setContentInsetsRelative(II)V
    .locals 1
    .param p1, "contentInsetStart"    # I
    .param p2, "contentInsetEnd"    # I

    .prologue
    .line 861
    iget-object v0, p0, Llenovo/widget/Toolbar;->mContentInsets:Lcom/lenovo/internal/widget/RtlSpacingHelper;

    invoke-virtual {v0, p1, p2}, Lcom/lenovo/internal/widget/RtlSpacingHelper;->setRelative(II)V

    .line 862
    return-void
.end method

.method public setLogo(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 296
    invoke-virtual {p0}, Llenovo/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/lenovo/internal/widget/ViewUtils;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Llenovo/widget/Toolbar;->setLogo(Landroid/graphics/drawable/Drawable;)V

    .line 297
    return-void
.end method

.method public setLogo(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 412
    if-eqz p1, :cond_2

    .line 413
    invoke-direct {p0}, Llenovo/widget/Toolbar;->ensureLogoView()V

    .line 414
    iget-object v0, p0, Llenovo/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_0

    .line 415
    iget-object v0, p0, Llenovo/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Llenovo/widget/Toolbar;->addSystemView(Landroid/view/View;)V

    .line 416
    iget-object v0, p0, Llenovo/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Llenovo/widget/Toolbar;->updateChildVisibilityForExpandedActionView(Landroid/view/View;)V

    .line 421
    :cond_0
    :goto_0
    iget-object v0, p0, Llenovo/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 422
    iget-object v0, p0, Llenovo/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 424
    :cond_1
    return-void

    .line 418
    :cond_2
    iget-object v0, p0, Llenovo/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Llenovo/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 419
    iget-object v0, p0, Llenovo/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Llenovo/widget/Toolbar;->removeView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public setLogoDescription(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 446
    invoke-virtual {p0}, Llenovo/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Llenovo/widget/Toolbar;->setLogoDescription(Ljava/lang/CharSequence;)V

    .line 447
    return-void
.end method

.method public setLogoDescription(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "description"    # Ljava/lang/CharSequence;

    .prologue
    .line 458
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 459
    invoke-direct {p0}, Llenovo/widget/Toolbar;->ensureLogoView()V

    .line 461
    :cond_0
    iget-object v0, p0, Llenovo/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 462
    iget-object v0, p0, Llenovo/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 464
    :cond_1
    return-void
.end method

.method public setMenu(Lcom/lenovo/internal/view/menu/MenuBuilder;Llenovo/widget/ActionMenuPresenter;)V
    .locals 5
    .param p1, "menu"    # Lcom/lenovo/internal/view/menu/MenuBuilder;
    .param p2, "outerPresenter"    # Llenovo/widget/ActionMenuPresenter;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 339
    if-nez p1, :cond_1

    iget-object v1, p0, Llenovo/widget/Toolbar;->mMenuView:Llenovo/widget/ActionMenuView;

    if-nez v1, :cond_1

    .line 371
    :cond_0
    :goto_0
    return-void

    .line 343
    :cond_1
    invoke-direct {p0}, Llenovo/widget/Toolbar;->ensureMenuView()V

    .line 344
    iget-object v1, p0, Llenovo/widget/Toolbar;->mMenuView:Llenovo/widget/ActionMenuView;

    invoke-virtual {v1}, Llenovo/widget/ActionMenuView;->peekMenu()Lcom/lenovo/internal/view/menu/MenuBuilder;

    move-result-object v0

    .line 345
    .local v0, "oldMenu":Lcom/lenovo/internal/view/menu/MenuBuilder;
    if-eq v0, p1, :cond_0

    .line 349
    if-eqz v0, :cond_2

    .line 350
    iget-object v1, p0, Llenovo/widget/Toolbar;->mOuterActionMenuPresenter:Llenovo/widget/ActionMenuPresenter;

    invoke-virtual {v0, v1}, Lcom/lenovo/internal/view/menu/MenuBuilder;->removeMenuPresenter(Lcom/lenovo/internal/view/menu/MenuPresenter;)V

    .line 351
    iget-object v1, p0, Llenovo/widget/Toolbar;->mExpandedMenuPresenter:Llenovo/widget/Toolbar$ExpandedActionViewMenuPresenter;

    invoke-virtual {v0, v1}, Lcom/lenovo/internal/view/menu/MenuBuilder;->removeMenuPresenter(Lcom/lenovo/internal/view/menu/MenuPresenter;)V

    .line 354
    :cond_2
    iget-object v1, p0, Llenovo/widget/Toolbar;->mExpandedMenuPresenter:Llenovo/widget/Toolbar$ExpandedActionViewMenuPresenter;

    if-nez v1, :cond_3

    .line 355
    new-instance v1, Llenovo/widget/Toolbar$ExpandedActionViewMenuPresenter;

    invoke-direct {v1, p0, v4}, Llenovo/widget/Toolbar$ExpandedActionViewMenuPresenter;-><init>(Llenovo/widget/Toolbar;Llenovo/widget/Toolbar$1;)V

    iput-object v1, p0, Llenovo/widget/Toolbar;->mExpandedMenuPresenter:Llenovo/widget/Toolbar$ExpandedActionViewMenuPresenter;

    .line 358
    :cond_3
    invoke-virtual {p2, v3}, Llenovo/widget/ActionMenuPresenter;->setExpandedActionViewsExclusive(Z)V

    .line 359
    if-eqz p1, :cond_4

    .line 360
    iget-object v1, p0, Llenovo/widget/Toolbar;->mPopupContext:Landroid/content/Context;

    invoke-virtual {p1, p2, v1}, Lcom/lenovo/internal/view/menu/MenuBuilder;->addMenuPresenter(Lcom/lenovo/internal/view/menu/MenuPresenter;Landroid/content/Context;)V

    .line 361
    iget-object v1, p0, Llenovo/widget/Toolbar;->mExpandedMenuPresenter:Llenovo/widget/Toolbar$ExpandedActionViewMenuPresenter;

    iget-object v2, p0, Llenovo/widget/Toolbar;->mPopupContext:Landroid/content/Context;

    invoke-virtual {p1, v1, v2}, Lcom/lenovo/internal/view/menu/MenuBuilder;->addMenuPresenter(Lcom/lenovo/internal/view/menu/MenuPresenter;Landroid/content/Context;)V

    .line 368
    :goto_1
    iget-object v1, p0, Llenovo/widget/Toolbar;->mMenuView:Llenovo/widget/ActionMenuView;

    iget v2, p0, Llenovo/widget/Toolbar;->mPopupTheme:I

    invoke-virtual {v1, v2}, Llenovo/widget/ActionMenuView;->setPopupTheme(I)V

    .line 369
    iget-object v1, p0, Llenovo/widget/Toolbar;->mMenuView:Llenovo/widget/ActionMenuView;

    invoke-virtual {v1, p2}, Llenovo/widget/ActionMenuView;->setPresenter(Llenovo/widget/ActionMenuPresenter;)V

    .line 370
    iput-object p2, p0, Llenovo/widget/Toolbar;->mOuterActionMenuPresenter:Llenovo/widget/ActionMenuPresenter;

    goto :goto_0

    .line 363
    :cond_4
    iget-object v1, p0, Llenovo/widget/Toolbar;->mPopupContext:Landroid/content/Context;

    invoke-virtual {p2, v1, v4}, Llenovo/widget/ActionMenuPresenter;->initForMenu(Landroid/content/Context;Lcom/lenovo/internal/view/menu/MenuBuilder;)V

    .line 364
    iget-object v1, p0, Llenovo/widget/Toolbar;->mExpandedMenuPresenter:Llenovo/widget/Toolbar$ExpandedActionViewMenuPresenter;

    iget-object v2, p0, Llenovo/widget/Toolbar;->mPopupContext:Landroid/content/Context;

    invoke-virtual {v1, v2, v4}, Llenovo/widget/Toolbar$ExpandedActionViewMenuPresenter;->initForMenu(Landroid/content/Context;Lcom/lenovo/internal/view/menu/MenuBuilder;)V

    .line 365
    invoke-virtual {p2, v3}, Llenovo/widget/ActionMenuPresenter;->updateMenuView(Z)V

    .line 366
    iget-object v1, p0, Llenovo/widget/Toolbar;->mExpandedMenuPresenter:Llenovo/widget/Toolbar$ExpandedActionViewMenuPresenter;

    invoke-virtual {v1, v3}, Llenovo/widget/Toolbar$ExpandedActionViewMenuPresenter;->updateMenuView(Z)V

    goto :goto_1
.end method

.method public setMenuCallbacks(Lcom/lenovo/internal/view/menu/MenuPresenter$Callback;Lcom/lenovo/internal/view/menu/MenuBuilder$Callback;)V
    .locals 0
    .param p1, "pcb"    # Lcom/lenovo/internal/view/menu/MenuPresenter$Callback;
    .param p2, "mcb"    # Lcom/lenovo/internal/view/menu/MenuBuilder$Callback;

    .prologue
    .line 1742
    iput-object p1, p0, Llenovo/widget/Toolbar;->mActionMenuPresenterCallback:Lcom/lenovo/internal/view/menu/MenuPresenter$Callback;

    .line 1743
    iput-object p2, p0, Llenovo/widget/Toolbar;->mMenuBuilderCallback:Lcom/lenovo/internal/view/menu/MenuBuilder$Callback;

    .line 1744
    return-void
.end method

.method public setMinimumHeight(I)V
    .locals 0
    .param p1, "minHeight"    # I

    .prologue
    .line 1749
    iput p1, p0, Llenovo/widget/Toolbar;->mMinHeight:I

    .line 1751
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setMinimumHeight(I)V

    .line 1752
    return-void
.end method

.method public setNavigationContentDescription(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 690
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Llenovo/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0}, Llenovo/widget/Toolbar;->setNavigationContentDescription(Ljava/lang/CharSequence;)V

    .line 691
    return-void

    .line 690
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setNavigationContentDescription(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "description"    # Ljava/lang/CharSequence;
        .annotation build Llenovo/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 702
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 703
    invoke-direct {p0}, Llenovo/widget/Toolbar;->ensureNavButtonView()V

    .line 705
    :cond_0
    iget-object v0, p0, Llenovo/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    if-eqz v0, :cond_1

    .line 706
    iget-object v0, p0, Llenovo/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 708
    :cond_1
    return-void
.end method

.method public setNavigationIcon(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 723
    invoke-virtual {p0}, Llenovo/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/lenovo/internal/widget/ViewUtils;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Llenovo/widget/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    .line 724
    return-void
.end method

.method public setNavigationIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;
        .annotation build Llenovo/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 739
    if-eqz p1, :cond_2

    .line 740
    invoke-direct {p0}, Llenovo/widget/Toolbar;->ensureNavButtonView()V

    .line 741
    iget-object v0, p0, Llenovo/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_0

    .line 742
    iget-object v0, p0, Llenovo/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-direct {p0, v0}, Llenovo/widget/Toolbar;->addSystemView(Landroid/view/View;)V

    .line 743
    iget-object v0, p0, Llenovo/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-direct {p0, v0}, Llenovo/widget/Toolbar;->updateChildVisibilityForExpandedActionView(Landroid/view/View;)V

    .line 748
    :cond_0
    :goto_0
    iget-object v0, p0, Llenovo/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    if-eqz v0, :cond_1

    .line 749
    iget-object v0, p0, Llenovo/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 751
    :cond_1
    return-void

    .line 745
    :cond_2
    iget-object v0, p0, Llenovo/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Llenovo/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 746
    iget-object v0, p0, Llenovo/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-virtual {p0, v0}, Llenovo/widget/Toolbar;->removeView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 773
    invoke-direct {p0}, Llenovo/widget/Toolbar;->ensureNavButtonView()V

    .line 774
    iget-object v0, p0, Llenovo/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 775
    return-void
.end method

.method public setOnMenuItemClickListener(Llenovo/widget/Toolbar$OnMenuItemClickListener;)V
    .locals 0
    .param p1, "listener"    # Llenovo/widget/Toolbar$OnMenuItemClickListener;

    .prologue
    .line 841
    iput-object p1, p0, Llenovo/widget/Toolbar;->mOnMenuItemClickListener:Llenovo/widget/Toolbar$OnMenuItemClickListener;

    .line 842
    return-void
.end method

.method public setPopupTheme(I)V
    .locals 2
    .param p1, "resId"    # I

    .prologue
    .line 260
    iget v0, p0, Llenovo/widget/Toolbar;->mPopupTheme:I

    if-eq v0, p1, :cond_0

    .line 261
    iput p1, p0, Llenovo/widget/Toolbar;->mPopupTheme:I

    .line 262
    if-nez p1, :cond_1

    .line 263
    invoke-virtual {p0}, Llenovo/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Llenovo/widget/Toolbar;->mPopupContext:Landroid/content/Context;

    .line 268
    :cond_0
    :goto_0
    return-void

    .line 265
    :cond_1
    new-instance v0, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Llenovo/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Llenovo/widget/Toolbar;->mPopupContext:Landroid/content/Context;

    goto :goto_0
.end method

.method public setSubtitle(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 586
    invoke-virtual {p0}, Llenovo/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Llenovo/widget/Toolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 587
    return-void
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .locals 3
    .param p1, "subtitle"    # Ljava/lang/CharSequence;

    .prologue
    .line 597
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 598
    iget-object v1, p0, Llenovo/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    if-nez v1, :cond_1

    .line 599
    invoke-virtual {p0}, Llenovo/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 600
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Llenovo/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    .line 601
    iget-object v1, p0, Llenovo/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->setSingleLine()V

    .line 602
    iget-object v1, p0, Llenovo/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 603
    iget v1, p0, Llenovo/widget/Toolbar;->mSubtitleTextAppearance:I

    if-eqz v1, :cond_0

    .line 604
    iget-object v1, p0, Llenovo/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    iget v2, p0, Llenovo/widget/Toolbar;->mSubtitleTextAppearance:I

    invoke-virtual {v1, v0, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 606
    :cond_0
    iget v1, p0, Llenovo/widget/Toolbar;->mSubtitleTextColor:I

    if-eqz v1, :cond_1

    .line 607
    iget-object v1, p0, Llenovo/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    iget v2, p0, Llenovo/widget/Toolbar;->mSubtitleTextColor:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 610
    .end local v0    # "context":Landroid/content/Context;
    :cond_1
    iget-object v1, p0, Llenovo/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_2

    .line 611
    iget-object v1, p0, Llenovo/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-direct {p0, v1}, Llenovo/widget/Toolbar;->addSystemView(Landroid/view/View;)V

    .line 612
    iget-object v1, p0, Llenovo/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-direct {p0, v1}, Llenovo/widget/Toolbar;->updateChildVisibilityForExpandedActionView(Landroid/view/View;)V

    .line 617
    :cond_2
    :goto_0
    iget-object v1, p0, Llenovo/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    if-eqz v1, :cond_3

    .line 618
    iget-object v1, p0, Llenovo/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 620
    :cond_3
    iput-object p1, p0, Llenovo/widget/Toolbar;->mSubtitleText:Ljava/lang/CharSequence;

    .line 621
    return-void

    .line 614
    :cond_4
    iget-object v1, p0, Llenovo/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    if-eqz v1, :cond_2

    iget-object v1, p0, Llenovo/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 615
    iget-object v1, p0, Llenovo/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Llenovo/widget/Toolbar;->removeView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public setSubtitleTextAppearance(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resId"    # I

    .prologue
    .line 639
    iput p2, p0, Llenovo/widget/Toolbar;->mSubtitleTextAppearance:I

    .line 640
    iget-object v0, p0, Llenovo/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 641
    iget-object v0, p0, Llenovo/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1, p2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 643
    :cond_0
    return-void
.end method

.method public setSubtitleTextColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 663
    iput p1, p0, Llenovo/widget/Toolbar;->mSubtitleTextColor:I

    .line 664
    iget-object v0, p0, Llenovo/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 665
    iget-object v0, p0, Llenovo/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 667
    :cond_0
    return-void
.end method

.method public setTitle(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 531
    invoke-virtual {p0}, Llenovo/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Llenovo/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 532
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 3
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 543
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 544
    iget-object v1, p0, Llenovo/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    if-nez v1, :cond_1

    .line 545
    invoke-virtual {p0}, Llenovo/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 546
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Llenovo/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    .line 547
    iget-object v1, p0, Llenovo/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->setSingleLine()V

    .line 548
    iget-object v1, p0, Llenovo/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 549
    iget v1, p0, Llenovo/widget/Toolbar;->mTitleTextAppearance:I

    if-eqz v1, :cond_0

    .line 550
    iget-object v1, p0, Llenovo/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    iget v2, p0, Llenovo/widget/Toolbar;->mTitleTextAppearance:I

    invoke-virtual {v1, v0, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 552
    :cond_0
    iget v1, p0, Llenovo/widget/Toolbar;->mTitleTextColor:I

    if-eqz v1, :cond_1

    .line 553
    iget-object v1, p0, Llenovo/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    iget v2, p0, Llenovo/widget/Toolbar;->mTitleTextColor:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 556
    .end local v0    # "context":Landroid/content/Context;
    :cond_1
    iget-object v1, p0, Llenovo/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_2

    .line 557
    iget-object v1, p0, Llenovo/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-direct {p0, v1}, Llenovo/widget/Toolbar;->addSystemView(Landroid/view/View;)V

    .line 558
    iget-object v1, p0, Llenovo/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-direct {p0, v1}, Llenovo/widget/Toolbar;->updateChildVisibilityForExpandedActionView(Landroid/view/View;)V

    .line 563
    :cond_2
    :goto_0
    iget-object v1, p0, Llenovo/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    if-eqz v1, :cond_3

    .line 564
    iget-object v1, p0, Llenovo/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 566
    :cond_3
    iput-object p1, p0, Llenovo/widget/Toolbar;->mTitleText:Ljava/lang/CharSequence;

    .line 567
    return-void

    .line 560
    :cond_4
    iget-object v1, p0, Llenovo/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    if-eqz v1, :cond_2

    iget-object v1, p0, Llenovo/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 561
    iget-object v1, p0, Llenovo/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Llenovo/widget/Toolbar;->removeView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public setTitleTextAppearance(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resId"    # I

    .prologue
    .line 628
    iput p2, p0, Llenovo/widget/Toolbar;->mTitleTextAppearance:I

    .line 629
    iget-object v0, p0, Llenovo/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 630
    iget-object v0, p0, Llenovo/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1, p2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 632
    :cond_0
    return-void
.end method

.method public setTitleTextColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 651
    iput p1, p0, Llenovo/widget/Toolbar;->mTitleTextColor:I

    .line 652
    iget-object v0, p0, Llenovo/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 653
    iget-object v0, p0, Llenovo/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 655
    :cond_0
    return-void
.end method

.method public showOverflowMenu()Z
    .locals 1

    .prologue
    .line 325
    iget-object v0, p0, Llenovo/widget/Toolbar;->mMenuView:Llenovo/widget/ActionMenuView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Llenovo/widget/Toolbar;->mMenuView:Llenovo/widget/ActionMenuView;

    invoke-virtual {v0}, Llenovo/widget/ActionMenuView;->showOverflowMenu()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
