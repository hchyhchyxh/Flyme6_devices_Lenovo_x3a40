.class public Llenovo/design/widget/CoordinatorLayout;
.super Landroid/view/ViewGroup;
.source "CoordinatorLayout.java"

# interfaces
.implements Llenovo/design/widget/NestedScrollingParent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llenovo/design/widget/CoordinatorLayout$SavedState;,
        Llenovo/design/widget/CoordinatorLayout$HierarchyChangeListener;,
        Llenovo/design/widget/CoordinatorLayout$ApplyInsetsListener;,
        Llenovo/design/widget/CoordinatorLayout$LayoutParams;,
        Llenovo/design/widget/CoordinatorLayout$Behavior;,
        Llenovo/design/widget/CoordinatorLayout$DefaultBehavior;,
        Llenovo/design/widget/CoordinatorLayout$ViewElevationComparator;,
        Llenovo/design/widget/CoordinatorLayout$OnPreDrawListener;
    }
.end annotation


# static fields
.field static final CONSTRUCTOR_PARAMS:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field static final INSETS_HELPER:Llenovo/design/widget/CoordinatorLayoutInsetsHelper;

.field static final TAG:Ljava/lang/String; = "CoordinatorLayout"

.field static final TOP_SORTED_CHILDREN_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private static final TYPE_ON_INTERCEPT:I = 0x0

.field private static final TYPE_ON_TOUCH:I = 0x1

.field static final WIDGET_PACKAGE_NAME:Ljava/lang/String;

.field static final sConstructors:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Constructor",
            "<",
            "Llenovo/design/widget/CoordinatorLayout$Behavior;",
            ">;>;>;"
        }
    .end annotation
.end field


# instance fields
.field private mBehaviorTouchView:Landroid/view/View;

.field private final mDependencySortedChildren:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mDrawStatusBarBackground:Z

.field private mIsAttachedToWindow:Z

.field private mKeylines:[I

.field private mLastInsets:Landroid/view/WindowInsets;

.field final mLayoutDependencyComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mNeedsPreDrawListener:Z

.field private mNestedScrollingDirectChild:Landroid/view/View;

.field private final mNestedScrollingParentHelper:Llenovo/design/widget/NestedScrollingParentHelper;

.field private mNestedScrollingTarget:Landroid/view/View;

.field private mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

.field private mOnPreDrawListener:Llenovo/design/widget/CoordinatorLayout$OnPreDrawListener;

.field private mScrimPaint:Landroid/graphics/Paint;

.field private mStatusBarBackground:Landroid/graphics/drawable/Drawable;

.field private final mTempDependenciesList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final mTempIntPair:[I

.field private final mTempList1:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final mTempRect1:Landroid/graphics/Rect;

.field private final mTempRect2:Landroid/graphics/Rect;

.field private final mTempRect3:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 83
    const-class v0, Llenovo/design/widget/CoordinatorLayout;

    invoke-virtual {v0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Llenovo/design/widget/CoordinatorLayout;->WIDGET_PACKAGE_NAME:Ljava/lang/String;

    .line 89
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 90
    new-instance v0, Llenovo/design/widget/CoordinatorLayout$ViewElevationComparator;

    invoke-direct {v0}, Llenovo/design/widget/CoordinatorLayout$ViewElevationComparator;-><init>()V

    sput-object v0, Llenovo/design/widget/CoordinatorLayout;->TOP_SORTED_CHILDREN_COMPARATOR:Ljava/util/Comparator;

    .line 91
    new-instance v0, Llenovo/design/widget/CoordinatorLayoutInsetsHelperLollipop;

    invoke-direct {v0}, Llenovo/design/widget/CoordinatorLayoutInsetsHelperLollipop;-><init>()V

    sput-object v0, Llenovo/design/widget/CoordinatorLayout;->INSETS_HELPER:Llenovo/design/widget/CoordinatorLayoutInsetsHelper;

    .line 98
    :goto_0
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Landroid/content/Context;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-class v2, Landroid/util/AttributeSet;

    aput-object v2, v0, v1

    sput-object v0, Llenovo/design/widget/CoordinatorLayout;->CONSTRUCTOR_PARAMS:[Ljava/lang/Class;

    .line 103
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Llenovo/design/widget/CoordinatorLayout;->sConstructors:Ljava/lang/ThreadLocal;

    return-void

    .line 93
    :cond_0
    sput-object v2, Llenovo/design/widget/CoordinatorLayout;->TOP_SORTED_CHILDREN_COMPARATOR:Ljava/util/Comparator;

    .line 94
    sput-object v2, Llenovo/design/widget/CoordinatorLayout;->INSETS_HELPER:Llenovo/design/widget/CoordinatorLayoutInsetsHelper;

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 156
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Llenovo/design/widget/CoordinatorLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 157
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 160
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Llenovo/design/widget/CoordinatorLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 161
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v8, 0x0

    .line 164
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 106
    new-instance v6, Llenovo/design/widget/CoordinatorLayout$1;

    invoke-direct {v6, p0}, Llenovo/design/widget/CoordinatorLayout$1;-><init>(Llenovo/design/widget/CoordinatorLayout;)V

    iput-object v6, p0, Llenovo/design/widget/CoordinatorLayout;->mLayoutDependencyComparator:Ljava/util/Comparator;

    .line 126
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Llenovo/design/widget/CoordinatorLayout;->mDependencySortedChildren:Ljava/util/List;

    .line 127
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Llenovo/design/widget/CoordinatorLayout;->mTempList1:Ljava/util/List;

    .line 128
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Llenovo/design/widget/CoordinatorLayout;->mTempDependenciesList:Ljava/util/List;

    .line 129
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    iput-object v6, p0, Llenovo/design/widget/CoordinatorLayout;->mTempRect1:Landroid/graphics/Rect;

    .line 130
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    iput-object v6, p0, Llenovo/design/widget/CoordinatorLayout;->mTempRect2:Landroid/graphics/Rect;

    .line 131
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    iput-object v6, p0, Llenovo/design/widget/CoordinatorLayout;->mTempRect3:Landroid/graphics/Rect;

    .line 132
    const/4 v6, 0x2

    new-array v6, v6, [I

    iput-object v6, p0, Llenovo/design/widget/CoordinatorLayout;->mTempIntPair:[I

    .line 152
    new-instance v6, Llenovo/design/widget/NestedScrollingParentHelper;

    invoke-direct {v6, p0}, Llenovo/design/widget/NestedScrollingParentHelper;-><init>(Landroid/view/ViewGroup;)V

    iput-object v6, p0, Llenovo/design/widget/CoordinatorLayout;->mNestedScrollingParentHelper:Llenovo/design/widget/NestedScrollingParentHelper;

    .line 166
    sget-object v6, Lcom/lenovo/internal/R$styleable;->CoordinatorLayout:[I

    const v7, 0x90302f5

    invoke-virtual {p1, p2, v6, p3, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 168
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v8, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    .line 169
    .local v4, "keylineArrayRes":I
    if-eqz v4, :cond_0

    .line 170
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 171
    .local v5, "res":Landroid/content/res/Resources;
    invoke-virtual {v5, v4}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v6

    iput-object v6, p0, Llenovo/design/widget/CoordinatorLayout;->mKeylines:[I

    .line 172
    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v2, v6, Landroid/util/DisplayMetrics;->density:F

    .line 173
    .local v2, "density":F
    iget-object v6, p0, Llenovo/design/widget/CoordinatorLayout;->mKeylines:[I

    array-length v1, v6

    .line 174
    .local v1, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 175
    iget-object v6, p0, Llenovo/design/widget/CoordinatorLayout;->mKeylines:[I

    aget v7, v6, v3

    int-to-float v7, v7

    mul-float/2addr v7, v2

    float-to-int v7, v7

    aput v7, v6, v3

    .line 174
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 178
    .end local v1    # "count":I
    .end local v2    # "density":F
    .end local v3    # "i":I
    .end local v5    # "res":Landroid/content/res/Resources;
    :cond_0
    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, p0, Llenovo/design/widget/CoordinatorLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    .line 179
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 181
    sget-object v6, Llenovo/design/widget/CoordinatorLayout;->INSETS_HELPER:Llenovo/design/widget/CoordinatorLayoutInsetsHelper;

    if-eqz v6, :cond_1

    .line 182
    sget-object v6, Llenovo/design/widget/CoordinatorLayout;->INSETS_HELPER:Llenovo/design/widget/CoordinatorLayoutInsetsHelper;

    new-instance v7, Llenovo/design/widget/CoordinatorLayout$ApplyInsetsListener;

    invoke-direct {v7, p0}, Llenovo/design/widget/CoordinatorLayout$ApplyInsetsListener;-><init>(Llenovo/design/widget/CoordinatorLayout;)V

    invoke-interface {v6, p0, v7}, Llenovo/design/widget/CoordinatorLayoutInsetsHelper;->setupForWindowInsets(Landroid/view/View;Landroid/view/View$OnApplyWindowInsetsListener;)V

    .line 184
    :cond_1
    new-instance v6, Llenovo/design/widget/CoordinatorLayout$HierarchyChangeListener;

    invoke-direct {v6, p0}, Llenovo/design/widget/CoordinatorLayout$HierarchyChangeListener;-><init>(Llenovo/design/widget/CoordinatorLayout;)V

    invoke-super {p0, v6}, Landroid/view/ViewGroup;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    .line 185
    return-void
.end method

.method static synthetic access$000(Llenovo/design/widget/CoordinatorLayout;Landroid/view/WindowInsets;)V
    .locals 0
    .param p0, "x0"    # Llenovo/design/widget/CoordinatorLayout;
    .param p1, "x1"    # Landroid/view/WindowInsets;

    .prologue
    .line 81
    invoke-direct {p0, p1}, Llenovo/design/widget/CoordinatorLayout;->setWindowInsets(Landroid/view/WindowInsets;)V

    return-void
.end method

.method static synthetic access$100(Llenovo/design/widget/CoordinatorLayout;)Landroid/view/ViewGroup$OnHierarchyChangeListener;
    .locals 1
    .param p0, "x0"    # Llenovo/design/widget/CoordinatorLayout;

    .prologue
    .line 81
    iget-object v0, p0, Llenovo/design/widget/CoordinatorLayout;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    return-object v0
.end method

.method private dispatchChildApplyWindowInsets(Landroid/view/WindowInsets;)V
    .locals 6
    .param p1, "insets"    # Landroid/view/WindowInsets;

    .prologue
    .line 690
    invoke-virtual {p1}, Landroid/view/WindowInsets;->isConsumed()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 716
    :cond_0
    return-void

    .line 694
    :cond_1
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-virtual {p0}, Llenovo/design/widget/CoordinatorLayout;->getChildCount()I

    move-result v4

    .local v4, "z":I
    :goto_0
    if-ge v2, v4, :cond_0

    .line 695
    invoke-virtual {p0, v2}, Llenovo/design/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 696
    .local v1, "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getFitsSystemWindows()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 697
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Llenovo/design/widget/CoordinatorLayout$LayoutParams;

    .line 698
    .local v3, "lp":Llenovo/design/widget/CoordinatorLayout$LayoutParams;
    invoke-virtual {v3}, Llenovo/design/widget/CoordinatorLayout$LayoutParams;->getBehavior()Llenovo/design/widget/CoordinatorLayout$Behavior;

    move-result-object v0

    .line 700
    .local v0, "b":Llenovo/design/widget/CoordinatorLayout$Behavior;
    if-eqz v0, :cond_2

    .line 702
    invoke-virtual {v0, p0, v1, p1}, Llenovo/design/widget/CoordinatorLayout$Behavior;->onApplyWindowInsets(Llenovo/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p1

    .line 703
    invoke-virtual {p1}, Landroid/view/WindowInsets;->isConsumed()Z

    move-result v5

    if-nez v5, :cond_0

    .line 710
    :cond_2
    invoke-virtual {v1, p1}, Landroid/view/View;->dispatchApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p1

    .line 711
    invoke-virtual {p1}, Landroid/view/WindowInsets;->isConsumed()Z

    move-result v5

    if-nez v5, :cond_0

    .line 694
    .end local v0    # "b":Llenovo/design/widget/CoordinatorLayout$Behavior;
    .end local v3    # "lp":Llenovo/design/widget/CoordinatorLayout$LayoutParams;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private getKeyline(I)I
    .locals 4
    .param p1, "index"    # I

    .prologue
    const/4 v0, 0x0

    .line 471
    iget-object v1, p0, Llenovo/design/widget/CoordinatorLayout;->mKeylines:[I

    if-nez v1, :cond_0

    .line 472
    const-string v1, "CoordinatorLayout"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No keylines defined for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " - attempted index lookup "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    :goto_0
    return v0

    .line 476
    :cond_0
    if-ltz p1, :cond_1

    iget-object v1, p0, Llenovo/design/widget/CoordinatorLayout;->mKeylines:[I

    array-length v1, v1

    if-lt p1, v1, :cond_2

    .line 477
    :cond_1
    const-string v1, "CoordinatorLayout"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Keyline index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " out of range for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 481
    :cond_2
    iget-object v0, p0, Llenovo/design/widget/CoordinatorLayout;->mKeylines:[I

    aget v0, v0, p1

    goto :goto_0
.end method

.method private getTopSortedChildren(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 308
    .local p1, "out":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 310
    invoke-virtual {p0}, Llenovo/design/widget/CoordinatorLayout;->isChildrenDrawingOrderEnabled()Z

    move-result v4

    .line 311
    .local v4, "useCustomOrder":Z
    invoke-virtual {p0}, Llenovo/design/widget/CoordinatorLayout;->getChildCount()I

    move-result v1

    .line 312
    .local v1, "childCount":I
    add-int/lit8 v3, v1, -0x1

    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_1

    .line 313
    if-eqz v4, :cond_0

    invoke-virtual {p0, v1, v3}, Llenovo/design/widget/CoordinatorLayout;->getChildDrawingOrder(II)I

    move-result v2

    .line 314
    .local v2, "childIndex":I
    :goto_1
    invoke-virtual {p0, v2}, Llenovo/design/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 315
    .local v0, "child":Landroid/view/View;
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 312
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .end local v0    # "child":Landroid/view/View;
    .end local v2    # "childIndex":I
    :cond_0
    move v2, v3

    .line 313
    goto :goto_1

    .line 318
    :cond_1
    sget-object v5, Llenovo/design/widget/CoordinatorLayout;->TOP_SORTED_CHILDREN_COMPARATOR:Ljava/util/Comparator;

    if-eqz v5, :cond_2

    .line 319
    sget-object v5, Llenovo/design/widget/CoordinatorLayout;->TOP_SORTED_CHILDREN_COMPARATOR:Ljava/util/Comparator;

    invoke-static {p1, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 321
    :cond_2
    return-void
.end method

.method private layoutChild(Landroid/view/View;I)V
    .locals 8
    .param p1, "child"    # Landroid/view/View;
    .param p2, "layoutDirection"    # I

    .prologue
    .line 1009
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Llenovo/design/widget/CoordinatorLayout$LayoutParams;

    .line 1010
    .local v6, "lp":Llenovo/design/widget/CoordinatorLayout$LayoutParams;
    iget-object v3, p0, Llenovo/design/widget/CoordinatorLayout;->mTempRect1:Landroid/graphics/Rect;

    .line 1011
    .local v3, "parent":Landroid/graphics/Rect;
    invoke-virtual {p0}, Llenovo/design/widget/CoordinatorLayout;->getPaddingLeft()I

    move-result v0

    iget v1, v6, Llenovo/design/widget/CoordinatorLayout$LayoutParams;->leftMargin:I

    add-int/2addr v0, v1

    invoke-virtual {p0}, Llenovo/design/widget/CoordinatorLayout;->getPaddingTop()I

    move-result v1

    iget v2, v6, Llenovo/design/widget/CoordinatorLayout$LayoutParams;->topMargin:I

    add-int/2addr v1, v2

    invoke-virtual {p0}, Llenovo/design/widget/CoordinatorLayout;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Llenovo/design/widget/CoordinatorLayout;->getPaddingRight()I

    move-result v5

    sub-int/2addr v2, v5

    iget v5, v6, Llenovo/design/widget/CoordinatorLayout$LayoutParams;->rightMargin:I

    sub-int/2addr v2, v5

    invoke-virtual {p0}, Llenovo/design/widget/CoordinatorLayout;->getHeight()I

    move-result v5

    invoke-virtual {p0}, Llenovo/design/widget/CoordinatorLayout;->getPaddingBottom()I

    move-result v7

    sub-int/2addr v5, v7

    iget v7, v6, Llenovo/design/widget/CoordinatorLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr v5, v7

    invoke-virtual {v3, v0, v1, v2, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 1016
    iget-object v0, p0, Llenovo/design/widget/CoordinatorLayout;->mLastInsets:Landroid/view/WindowInsets;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Llenovo/design/widget/CoordinatorLayout;->getFitsSystemWindows()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getFitsSystemWindows()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1020
    iget v0, v3, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Llenovo/design/widget/CoordinatorLayout;->mLastInsets:Landroid/view/WindowInsets;

    invoke-virtual {v1}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, v3, Landroid/graphics/Rect;->left:I

    .line 1021
    iget v0, v3, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Llenovo/design/widget/CoordinatorLayout;->mLastInsets:Landroid/view/WindowInsets;

    invoke-virtual {v1}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, v3, Landroid/graphics/Rect;->top:I

    .line 1022
    iget v0, v3, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Llenovo/design/widget/CoordinatorLayout;->mLastInsets:Landroid/view/WindowInsets;

    invoke-virtual {v1}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, v3, Landroid/graphics/Rect;->right:I

    .line 1023
    iget v0, v3, Landroid/graphics/Rect;->bottom:I

    iget-object v1, p0, Llenovo/design/widget/CoordinatorLayout;->mLastInsets:Landroid/view/WindowInsets;

    invoke-virtual {v1}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, v3, Landroid/graphics/Rect;->bottom:I

    .line 1026
    :cond_0
    iget-object v4, p0, Llenovo/design/widget/CoordinatorLayout;->mTempRect2:Landroid/graphics/Rect;

    .line 1027
    .local v4, "out":Landroid/graphics/Rect;
    iget v0, v6, Llenovo/design/widget/CoordinatorLayout$LayoutParams;->gravity:I

    invoke-static {v0}, Llenovo/design/widget/CoordinatorLayout;->resolveGravity(I)I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    move v5, p2

    invoke-static/range {v0 .. v5}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;I)V

    .line 1029
    iget v0, v4, Landroid/graphics/Rect;->left:I

    iget v1, v4, Landroid/graphics/Rect;->top:I

    iget v2, v4, Landroid/graphics/Rect;->right:I

    iget v5, v4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, v0, v1, v2, v5}, Landroid/view/View;->layout(IIII)V

    .line 1030
    return-void
.end method

.method private layoutChildWithAnchor(Landroid/view/View;Landroid/view/View;I)V
    .locals 7
    .param p1, "child"    # Landroid/view/View;
    .param p2, "anchor"    # Landroid/view/View;
    .param p3, "layoutDirection"    # I

    .prologue
    .line 924
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Llenovo/design/widget/CoordinatorLayout$LayoutParams;

    .line 926
    .local v2, "lp":Llenovo/design/widget/CoordinatorLayout$LayoutParams;
    iget-object v0, p0, Llenovo/design/widget/CoordinatorLayout;->mTempRect1:Landroid/graphics/Rect;

    .line 927
    .local v0, "anchorRect":Landroid/graphics/Rect;
    iget-object v1, p0, Llenovo/design/widget/CoordinatorLayout;->mTempRect2:Landroid/graphics/Rect;

    .line 928
    .local v1, "childRect":Landroid/graphics/Rect;
    invoke-virtual {p0, p2, v0}, Llenovo/design/widget/CoordinatorLayout;->getDescendantRect(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 929
    invoke-virtual {p0, p1, p3, v0, v1}, Llenovo/design/widget/CoordinatorLayout;->getDesiredAnchoredChildRect(Landroid/view/View;ILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 931
    iget v3, v1, Landroid/graphics/Rect;->left:I

    iget v4, v1, Landroid/graphics/Rect;->top:I

    iget v5, v1, Landroid/graphics/Rect;->right:I

    iget v6, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/view/View;->layout(IIII)V

    .line 932
    return-void
.end method

.method private layoutChildWithKeyline(Landroid/view/View;II)V
    .locals 14
    .param p1, "child"    # Landroid/view/View;
    .param p2, "keyline"    # I
    .param p3, "layoutDirection"    # I

    .prologue
    .line 946
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Llenovo/design/widget/CoordinatorLayout$LayoutParams;

    .line 947
    .local v7, "lp":Llenovo/design/widget/CoordinatorLayout$LayoutParams;
    iget v11, v7, Llenovo/design/widget/CoordinatorLayout$LayoutParams;->gravity:I

    invoke-static {v11}, Llenovo/design/widget/CoordinatorLayout;->resolveKeylineGravity(I)I

    move-result v11

    move/from16 v0, p3

    invoke-static {v11, v0}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v1

    .line 950
    .local v1, "absGravity":I
    and-int/lit8 v5, v1, 0x7

    .line 951
    .local v5, "hgrav":I
    and-int/lit8 v9, v1, 0x70

    .line 952
    .local v9, "vgrav":I
    invoke-virtual {p0}, Llenovo/design/widget/CoordinatorLayout;->getWidth()I

    move-result v10

    .line 953
    .local v10, "width":I
    invoke-virtual {p0}, Llenovo/design/widget/CoordinatorLayout;->getHeight()I

    move-result v4

    .line 954
    .local v4, "height":I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    .line 955
    .local v3, "childWidth":I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    .line 957
    .local v2, "childHeight":I
    const/4 v11, 0x1

    move/from16 v0, p3

    if-ne v0, v11, :cond_0

    .line 958
    sub-int p2, v10, p2

    .line 961
    :cond_0
    move/from16 v0, p2

    invoke-direct {p0, v0}, Llenovo/design/widget/CoordinatorLayout;->getKeyline(I)I

    move-result v11

    sub-int v6, v11, v3

    .line 962
    .local v6, "left":I
    const/4 v8, 0x0

    .line 964
    .local v8, "top":I
    sparse-switch v5, :sswitch_data_0

    .line 977
    :goto_0
    sparse-switch v9, :sswitch_data_1

    .line 991
    :goto_1
    invoke-virtual {p0}, Llenovo/design/widget/CoordinatorLayout;->getPaddingLeft()I

    move-result v11

    iget v12, v7, Llenovo/design/widget/CoordinatorLayout$LayoutParams;->leftMargin:I

    add-int/2addr v11, v12

    invoke-virtual {p0}, Llenovo/design/widget/CoordinatorLayout;->getPaddingRight()I

    move-result v12

    sub-int v12, v10, v12

    sub-int/2addr v12, v3

    iget v13, v7, Llenovo/design/widget/CoordinatorLayout$LayoutParams;->rightMargin:I

    sub-int/2addr v12, v13

    invoke-static {v6, v12}, Ljava/lang/Math;->min(II)I

    move-result v12

    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 994
    invoke-virtual {p0}, Llenovo/design/widget/CoordinatorLayout;->getPaddingTop()I

    move-result v11

    iget v12, v7, Llenovo/design/widget/CoordinatorLayout$LayoutParams;->topMargin:I

    add-int/2addr v11, v12

    invoke-virtual {p0}, Llenovo/design/widget/CoordinatorLayout;->getPaddingBottom()I

    move-result v12

    sub-int v12, v4, v12

    sub-int/2addr v12, v2

    iget v13, v7, Llenovo/design/widget/CoordinatorLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr v12, v13

    invoke-static {v8, v12}, Ljava/lang/Math;->min(II)I

    move-result v12

    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 998
    add-int v11, v6, v3

    add-int v12, v8, v2

    invoke-virtual {p1, v6, v8, v11, v12}, Landroid/view/View;->layout(IIII)V

    .line 999
    return-void

    .line 970
    :sswitch_0
    add-int/2addr v6, v3

    .line 971
    goto :goto_0

    .line 973
    :sswitch_1
    div-int/lit8 v11, v3, 0x2

    add-int/2addr v6, v11

    goto :goto_0

    .line 983
    :sswitch_2
    add-int/2addr v8, v2

    .line 984
    goto :goto_1

    .line 986
    :sswitch_3
    div-int/lit8 v11, v2, 0x2

    add-int/2addr v8, v11

    goto :goto_1

    .line 964
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x5 -> :sswitch_0
    .end sparse-switch

    .line 977
    :sswitch_data_1
    .sparse-switch
        0x10 -> :sswitch_3
        0x50 -> :sswitch_2
    .end sparse-switch
.end method

.method static parseBehavior(Landroid/content/Context;Landroid/util/AttributeSet;Ljava/lang/String;)Llenovo/design/widget/CoordinatorLayout$Behavior;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "attrs"    # Landroid/util/AttributeSet;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    const/16 v7, 0x2e

    .line 485
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 486
    const/4 v5, 0x0

    .line 515
    :goto_0
    return-object v5

    .line 490
    :cond_0
    const-string v5, "."

    invoke-virtual {p2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 492
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 502
    .local v4, "fullName":Ljava/lang/String;
    :goto_1
    :try_start_0
    sget-object v5, Llenovo/design/widget/CoordinatorLayout;->sConstructors:Ljava/lang/ThreadLocal;

    invoke-virtual {v5}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 503
    .local v2, "constructors":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/reflect/Constructor<Llenovo/design/widget/CoordinatorLayout$Behavior;>;>;"
    if-nez v2, :cond_1

    .line 504
    new-instance v2, Ljava/util/HashMap;

    .end local v2    # "constructors":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/reflect/Constructor<Llenovo/design/widget/CoordinatorLayout$Behavior;>;>;"
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 505
    .restart local v2    # "constructors":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/reflect/Constructor<Llenovo/design/widget/CoordinatorLayout$Behavior;>;>;"
    sget-object v5, Llenovo/design/widget/CoordinatorLayout;->sConstructors:Ljava/lang/ThreadLocal;

    invoke-virtual {v5, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 507
    :cond_1
    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Constructor;

    .line 508
    .local v0, "c":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<Llenovo/design/widget/CoordinatorLayout$Behavior;>;"
    if-nez v0, :cond_2

    .line 509
    const/4 v5, 0x1

    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    invoke-static {v4, v5, v6}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v1

    .line 511
    .local v1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<Llenovo/design/widget/CoordinatorLayout$Behavior;>;"
    sget-object v5, Llenovo/design/widget/CoordinatorLayout;->CONSTRUCTOR_PARAMS:[Ljava/lang/Class;

    invoke-virtual {v1, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 512
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 513
    invoke-interface {v2, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 515
    .end local v1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<Llenovo/design/widget/CoordinatorLayout$Behavior;>;"
    :cond_2
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p0, v5, v6

    const/4 v6, 0x1

    aput-object p1, v5, v6

    invoke-virtual {v0, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Llenovo/design/widget/CoordinatorLayout$Behavior;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 493
    .end local v0    # "c":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<Llenovo/design/widget/CoordinatorLayout$Behavior;>;"
    .end local v2    # "constructors":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/reflect/Constructor<Llenovo/design/widget/CoordinatorLayout$Behavior;>;>;"
    .end local v4    # "fullName":Ljava/lang/String;
    :cond_3
    invoke-virtual {p2, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-ltz v5, :cond_4

    .line 495
    move-object v4, p2

    .restart local v4    # "fullName":Ljava/lang/String;
    goto :goto_1

    .line 498
    .end local v4    # "fullName":Ljava/lang/String;
    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Llenovo/design/widget/CoordinatorLayout;->WIDGET_PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "fullName":Ljava/lang/String;
    goto :goto_1

    .line 516
    :catch_0
    move-exception v3

    .line 517
    .local v3, "e":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Could not inflate Behavior subclass "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5
.end method

.method private performIntercept(Landroid/view/MotionEvent;I)Z
    .locals 22
    .param p1, "ev"    # Landroid/view/MotionEvent;
    .param p2, "type"    # I

    .prologue
    .line 324
    const/16 v16, 0x0

    .line 325
    .local v16, "intercepted":Z
    const/16 v19, 0x0

    .line 327
    .local v19, "newBlock":Z
    const/4 v12, 0x0

    .line 329
    .local v12, "cancelEvent":Landroid/view/MotionEvent;
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v10

    .line 331
    .local v10, "action":I
    move-object/from16 v0, p0

    iget-object v0, v0, Llenovo/design/widget/CoordinatorLayout;->mTempList1:Ljava/util/List;

    move-object/from16 v20, v0

    .line 332
    .local v20, "topmostChildList":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Llenovo/design/widget/CoordinatorLayout;->getTopSortedChildren(Ljava/util/List;)V

    .line 335
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v14

    .line 336
    .local v14, "childCount":I
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_0
    if-ge v15, v14, :cond_5

    .line 337
    move-object/from16 v0, v20

    invoke-interface {v0, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/view/View;

    .line 338
    .local v13, "child":Landroid/view/View;
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v18

    check-cast v18, Llenovo/design/widget/CoordinatorLayout$LayoutParams;

    .line 339
    .local v18, "lp":Llenovo/design/widget/CoordinatorLayout$LayoutParams;
    invoke-virtual/range {v18 .. v18}, Llenovo/design/widget/CoordinatorLayout$LayoutParams;->getBehavior()Llenovo/design/widget/CoordinatorLayout$Behavior;

    move-result-object v11

    .line 341
    .local v11, "b":Llenovo/design/widget/CoordinatorLayout$Behavior;
    if-nez v16, :cond_0

    if-eqz v19, :cond_3

    :cond_0
    if-eqz v10, :cond_3

    .line 344
    if-eqz v11, :cond_2

    .line 345
    if-nez v12, :cond_1

    .line 346
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 347
    .local v2, "now":J
    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-wide v4, v2

    invoke-static/range {v2 .. v9}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v12

    .line 350
    .end local v2    # "now":J
    :cond_1
    packed-switch p2, :pswitch_data_0

    .line 336
    :cond_2
    :goto_1
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    .line 352
    :pswitch_0
    move-object/from16 v0, p0

    invoke-virtual {v11, v0, v13, v12}, Llenovo/design/widget/CoordinatorLayout$Behavior;->onInterceptTouchEvent(Llenovo/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z

    goto :goto_1

    .line 355
    :pswitch_1
    move-object/from16 v0, p0

    invoke-virtual {v11, v0, v13, v12}, Llenovo/design/widget/CoordinatorLayout$Behavior;->onTouchEvent(Llenovo/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z

    goto :goto_1

    .line 362
    :cond_3
    if-nez v16, :cond_4

    if-eqz v11, :cond_4

    .line 363
    packed-switch p2, :pswitch_data_1

    .line 371
    :goto_2
    if-eqz v16, :cond_4

    .line 372
    move-object/from16 v0, p0

    iput-object v13, v0, Llenovo/design/widget/CoordinatorLayout;->mBehaviorTouchView:Landroid/view/View;

    .line 378
    :cond_4
    invoke-virtual/range {v18 .. v18}, Llenovo/design/widget/CoordinatorLayout$LayoutParams;->didBlockInteraction()Z

    move-result v21

    .line 379
    .local v21, "wasBlocking":Z
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1, v13}, Llenovo/design/widget/CoordinatorLayout$LayoutParams;->isBlockingInteractionBelow(Llenovo/design/widget/CoordinatorLayout;Landroid/view/View;)Z

    move-result v17

    .line 380
    .local v17, "isBlocking":Z
    if-eqz v17, :cond_6

    if-nez v21, :cond_6

    const/16 v19, 0x1

    .line 381
    :goto_3
    if-eqz v17, :cond_2

    if-nez v19, :cond_2

    .line 388
    .end local v11    # "b":Llenovo/design/widget/CoordinatorLayout$Behavior;
    .end local v13    # "child":Landroid/view/View;
    .end local v17    # "isBlocking":Z
    .end local v18    # "lp":Llenovo/design/widget/CoordinatorLayout$LayoutParams;
    .end local v21    # "wasBlocking":Z
    :cond_5
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->clear()V

    .line 390
    return v16

    .line 365
    .restart local v11    # "b":Llenovo/design/widget/CoordinatorLayout$Behavior;
    .restart local v13    # "child":Landroid/view/View;
    .restart local v18    # "lp":Llenovo/design/widget/CoordinatorLayout$LayoutParams;
    :pswitch_2
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v11, v0, v13, v1}, Llenovo/design/widget/CoordinatorLayout$Behavior;->onInterceptTouchEvent(Llenovo/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v16

    .line 366
    goto :goto_2

    .line 368
    :pswitch_3
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v11, v0, v13, v1}, Llenovo/design/widget/CoordinatorLayout$Behavior;->onTouchEvent(Llenovo/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v16

    goto :goto_2

    .line 380
    .restart local v17    # "isBlocking":Z
    .restart local v21    # "wasBlocking":Z
    :cond_6
    const/16 v19, 0x0

    goto :goto_3

    .line 350
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 363
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private prepareChildren()V
    .locals 7

    .prologue
    .line 544
    invoke-virtual {p0}, Llenovo/design/widget/CoordinatorLayout;->getChildCount()I

    move-result v1

    .line 546
    .local v1, "childCount":I
    iget-object v5, p0, Llenovo/design/widget/CoordinatorLayout;->mDependencySortedChildren:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-eq v5, v1, :cond_1

    const/4 v4, 0x1

    .line 548
    .local v4, "resortRequired":Z
    :goto_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v1, :cond_2

    .line 549
    invoke-virtual {p0, v2}, Llenovo/design/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 550
    .local v0, "child":Landroid/view/View;
    invoke-virtual {p0, v0}, Llenovo/design/widget/CoordinatorLayout;->getResolvedLayoutParams(Landroid/view/View;)Llenovo/design/widget/CoordinatorLayout$LayoutParams;

    move-result-object v3

    .line 551
    .local v3, "lp":Llenovo/design/widget/CoordinatorLayout$LayoutParams;
    if-nez v4, :cond_0

    invoke-virtual {v3, p0, v0}, Llenovo/design/widget/CoordinatorLayout$LayoutParams;->isDirty(Llenovo/design/widget/CoordinatorLayout;Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 552
    const/4 v4, 0x1

    .line 554
    :cond_0
    invoke-virtual {v3, p0, v0}, Llenovo/design/widget/CoordinatorLayout$LayoutParams;->findAnchorView(Llenovo/design/widget/CoordinatorLayout;Landroid/view/View;)Landroid/view/View;

    .line 548
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 546
    .end local v0    # "child":Landroid/view/View;
    .end local v2    # "i":I
    .end local v3    # "lp":Llenovo/design/widget/CoordinatorLayout$LayoutParams;
    .end local v4    # "resortRequired":Z
    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    .line 557
    .restart local v2    # "i":I
    .restart local v4    # "resortRequired":Z
    :cond_2
    if-eqz v4, :cond_4

    .line 558
    iget-object v5, p0, Llenovo/design/widget/CoordinatorLayout;->mDependencySortedChildren:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 559
    const/4 v2, 0x0

    :goto_2
    if-ge v2, v1, :cond_3

    .line 560
    iget-object v5, p0, Llenovo/design/widget/CoordinatorLayout;->mDependencySortedChildren:Ljava/util/List;

    invoke-virtual {p0, v2}, Llenovo/design/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 559
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 562
    :cond_3
    iget-object v5, p0, Llenovo/design/widget/CoordinatorLayout;->mDependencySortedChildren:Ljava/util/List;

    iget-object v6, p0, Llenovo/design/widget/CoordinatorLayout;->mLayoutDependencyComparator:Ljava/util/Comparator;

    invoke-static {v5, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 564
    :cond_4
    return-void
.end method

.method private resetTouchBehaviors()V
    .locals 14

    .prologue
    const/4 v5, 0x0

    .line 283
    iget-object v2, p0, Llenovo/design/widget/CoordinatorLayout;->mBehaviorTouchView:Landroid/view/View;

    if-eqz v2, :cond_1

    .line 284
    iget-object v2, p0, Llenovo/design/widget/CoordinatorLayout;->mBehaviorTouchView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Llenovo/design/widget/CoordinatorLayout$LayoutParams;

    invoke-virtual {v2}, Llenovo/design/widget/CoordinatorLayout$LayoutParams;->getBehavior()Llenovo/design/widget/CoordinatorLayout$Behavior;

    move-result-object v8

    .line 285
    .local v8, "b":Llenovo/design/widget/CoordinatorLayout$Behavior;
    if-eqz v8, :cond_0

    .line 286
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 287
    .local v0, "now":J
    const/4 v4, 0x3

    const/4 v7, 0x0

    move-wide v2, v0

    move v6, v5

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v9

    .line 289
    .local v9, "cancelEvent":Landroid/view/MotionEvent;
    iget-object v2, p0, Llenovo/design/widget/CoordinatorLayout;->mBehaviorTouchView:Landroid/view/View;

    invoke-virtual {v8, p0, v2, v9}, Llenovo/design/widget/CoordinatorLayout$Behavior;->onTouchEvent(Llenovo/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z

    .line 290
    invoke-virtual {v9}, Landroid/view/MotionEvent;->recycle()V

    .line 292
    .end local v0    # "now":J
    .end local v9    # "cancelEvent":Landroid/view/MotionEvent;
    :cond_0
    const/4 v2, 0x0

    iput-object v2, p0, Llenovo/design/widget/CoordinatorLayout;->mBehaviorTouchView:Landroid/view/View;

    .line 295
    .end local v8    # "b":Llenovo/design/widget/CoordinatorLayout$Behavior;
    :cond_1
    invoke-virtual {p0}, Llenovo/design/widget/CoordinatorLayout;->getChildCount()I

    move-result v11

    .line 296
    .local v11, "childCount":I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_0
    if-ge v12, v11, :cond_2

    .line 297
    invoke-virtual {p0, v12}, Llenovo/design/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 298
    .local v10, "child":Landroid/view/View;
    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Llenovo/design/widget/CoordinatorLayout$LayoutParams;

    .line 299
    .local v13, "lp":Llenovo/design/widget/CoordinatorLayout$LayoutParams;
    invoke-virtual {v13}, Llenovo/design/widget/CoordinatorLayout$LayoutParams;->resetTouchBehaviorTracking()V

    .line 296
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 301
    .end local v10    # "child":Landroid/view/View;
    .end local v13    # "lp":Llenovo/design/widget/CoordinatorLayout$LayoutParams;
    :cond_2
    return-void
.end method

.method private static resolveAnchoredChildGravity(I)I
    .locals 0
    .param p0, "gravity"    # I

    .prologue
    .line 1053
    if-nez p0, :cond_0

    const/16 p0, 0x11

    .end local p0    # "gravity":I
    :cond_0
    return p0
.end method

.method private static resolveGravity(I)I
    .locals 0
    .param p0, "gravity"    # I

    .prologue
    .line 1037
    if-nez p0, :cond_0

    const p0, 0x800033

    .end local p0    # "gravity":I
    :cond_0
    return p0
.end method

.method private static resolveKeylineGravity(I)I
    .locals 0
    .param p0, "gravity"    # I

    .prologue
    .line 1045
    if-nez p0, :cond_0

    const p0, 0x800035

    .end local p0    # "gravity":I
    :cond_0
    return p0
.end method

.method private setWindowInsets(Landroid/view/WindowInsets;)V
    .locals 3
    .param p1, "insets"    # Landroid/view/WindowInsets;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 267
    iget-object v0, p0, Llenovo/design/widget/CoordinatorLayout;->mLastInsets:Landroid/view/WindowInsets;

    if-eq v0, p1, :cond_0

    .line 268
    iput-object p1, p0, Llenovo/design/widget/CoordinatorLayout;->mLastInsets:Landroid/view/WindowInsets;

    .line 269
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v0

    if-lez v0, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Llenovo/design/widget/CoordinatorLayout;->mDrawStatusBarBackground:Z

    .line 270
    iget-boolean v0, p0, Llenovo/design/widget/CoordinatorLayout;->mDrawStatusBarBackground:Z

    if-nez v0, :cond_2

    invoke-virtual {p0}, Llenovo/design/widget/CoordinatorLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_2

    :goto_1
    invoke-virtual {p0, v1}, Llenovo/design/widget/CoordinatorLayout;->setWillNotDraw(Z)V

    .line 271
    invoke-direct {p0, p1}, Llenovo/design/widget/CoordinatorLayout;->dispatchChildApplyWindowInsets(Landroid/view/WindowInsets;)V

    .line 272
    invoke-virtual {p0}, Llenovo/design/widget/CoordinatorLayout;->requestLayout()V

    .line 274
    :cond_0
    return-void

    :cond_1
    move v0, v2

    .line 269
    goto :goto_0

    :cond_2
    move v1, v2

    .line 270
    goto :goto_1
.end method


# virtual methods
.method addPreDrawListener()V
    .locals 2

    .prologue
    .line 1264
    iget-boolean v1, p0, Llenovo/design/widget/CoordinatorLayout;->mIsAttachedToWindow:Z

    if-eqz v1, :cond_1

    .line 1266
    iget-object v1, p0, Llenovo/design/widget/CoordinatorLayout;->mOnPreDrawListener:Llenovo/design/widget/CoordinatorLayout$OnPreDrawListener;

    if-nez v1, :cond_0

    .line 1267
    new-instance v1, Llenovo/design/widget/CoordinatorLayout$OnPreDrawListener;

    invoke-direct {v1, p0}, Llenovo/design/widget/CoordinatorLayout$OnPreDrawListener;-><init>(Llenovo/design/widget/CoordinatorLayout;)V

    iput-object v1, p0, Llenovo/design/widget/CoordinatorLayout;->mOnPreDrawListener:Llenovo/design/widget/CoordinatorLayout$OnPreDrawListener;

    .line 1269
    :cond_0
    invoke-virtual {p0}, Llenovo/design/widget/CoordinatorLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 1270
    .local v0, "vto":Landroid/view/ViewTreeObserver;
    iget-object v1, p0, Llenovo/design/widget/CoordinatorLayout;->mOnPreDrawListener:Llenovo/design/widget/CoordinatorLayout$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 1275
    .end local v0    # "vto":Landroid/view/ViewTreeObserver;
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Llenovo/design/widget/CoordinatorLayout;->mNeedsPreDrawListener:Z

    .line 1276
    return-void
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 1389
    instance-of v0, p1, Llenovo/design/widget/CoordinatorLayout$LayoutParams;

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method dispatchDependentViewRemoved(Landroid/view/View;)V
    .locals 6
    .param p1, "removedChild"    # Landroid/view/View;

    .prologue
    .line 1142
    invoke-virtual {p0}, Llenovo/design/widget/CoordinatorLayout;->getChildCount()I

    move-result v2

    .line 1143
    .local v2, "childCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 1144
    invoke-virtual {p0, v3}, Llenovo/design/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1145
    .local v1, "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Llenovo/design/widget/CoordinatorLayout$LayoutParams;

    .line 1146
    .local v4, "lp":Llenovo/design/widget/CoordinatorLayout$LayoutParams;
    invoke-virtual {v4}, Llenovo/design/widget/CoordinatorLayout$LayoutParams;->getBehavior()Llenovo/design/widget/CoordinatorLayout$Behavior;

    move-result-object v0

    .line 1148
    .local v0, "b":Llenovo/design/widget/CoordinatorLayout$Behavior;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p0, v1, p1}, Llenovo/design/widget/CoordinatorLayout$Behavior;->layoutDependsOn(Llenovo/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1149
    invoke-virtual {v0, p0, v1, p1}, Llenovo/design/widget/CoordinatorLayout$Behavior;->onDependentViewRemoved(Llenovo/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)V

    .line 1143
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1152
    .end local v0    # "b":Llenovo/design/widget/CoordinatorLayout$Behavior;
    .end local v1    # "child":Landroid/view/View;
    .end local v4    # "lp":Llenovo/design/widget/CoordinatorLayout$LayoutParams;
    :cond_1
    return-void
.end method

.method public dispatchDependentViewsChanged(Landroid/view/View;)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1165
    iget-object v6, p0, Llenovo/design/widget/CoordinatorLayout;->mDependencySortedChildren:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v2

    .line 1166
    .local v2, "childCount":I
    const/4 v5, 0x0

    .line 1167
    .local v5, "viewSeen":Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_2

    .line 1168
    iget-object v6, p0, Llenovo/design/widget/CoordinatorLayout;->mDependencySortedChildren:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 1169
    .local v1, "child":Landroid/view/View;
    if-ne v1, p1, :cond_1

    .line 1171
    const/4 v5, 0x1

    .line 1167
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1174
    :cond_1
    if-eqz v5, :cond_0

    .line 1175
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Llenovo/design/widget/CoordinatorLayout$LayoutParams;

    .line 1177
    .local v4, "lp":Llenovo/design/widget/CoordinatorLayout$LayoutParams;
    invoke-virtual {v4}, Llenovo/design/widget/CoordinatorLayout$LayoutParams;->getBehavior()Llenovo/design/widget/CoordinatorLayout$Behavior;

    move-result-object v0

    .line 1178
    .local v0, "b":Llenovo/design/widget/CoordinatorLayout$Behavior;
    if-eqz v0, :cond_0

    invoke-virtual {v4, p0, v1, p1}, Llenovo/design/widget/CoordinatorLayout$LayoutParams;->dependsOn(Llenovo/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1179
    invoke-virtual {v0, p0, v1, p1}, Llenovo/design/widget/CoordinatorLayout$Behavior;->onDependentViewChanged(Llenovo/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z

    goto :goto_1

    .line 1183
    .end local v0    # "b":Llenovo/design/widget/CoordinatorLayout$Behavior;
    .end local v1    # "child":Landroid/view/View;
    .end local v4    # "lp":Llenovo/design/widget/CoordinatorLayout$LayoutParams;
    :cond_2
    return-void
.end method

.method dispatchOnDependentViewChanged(Z)V
    .locals 13
    .param p1, "fromNestedScroll"    # Z

    .prologue
    .line 1090
    invoke-virtual {p0}, Llenovo/design/widget/CoordinatorLayout;->getLayoutDirection()I

    move-result v8

    .line 1091
    .local v8, "layoutDirection":I
    iget-object v12, p0, Llenovo/design/widget/CoordinatorLayout;->mDependencySortedChildren:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v4

    .line 1092
    .local v4, "childCount":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v4, :cond_6

    .line 1093
    iget-object v12, p0, Llenovo/design/widget/CoordinatorLayout;->mDependencySortedChildren:Ljava/util/List;

    invoke-interface {v12, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 1094
    .local v3, "child":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Llenovo/design/widget/CoordinatorLayout$LayoutParams;

    .line 1097
    .local v9, "lp":Llenovo/design/widget/CoordinatorLayout$LayoutParams;
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_1
    if-ge v7, v6, :cond_1

    .line 1098
    iget-object v12, p0, Llenovo/design/widget/CoordinatorLayout;->mDependencySortedChildren:Ljava/util/List;

    invoke-interface {v12, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 1100
    .local v1, "checkChild":Landroid/view/View;
    iget-object v12, v9, Llenovo/design/widget/CoordinatorLayout$LayoutParams;->mAnchorDirectChild:Landroid/view/View;

    if-ne v12, v1, :cond_0

    .line 1101
    invoke-virtual {p0, v3, v8}, Llenovo/design/widget/CoordinatorLayout;->offsetChildToAnchor(Landroid/view/View;I)V

    .line 1097
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 1106
    .end local v1    # "checkChild":Landroid/view/View;
    :cond_1
    iget-object v11, p0, Llenovo/design/widget/CoordinatorLayout;->mTempRect1:Landroid/graphics/Rect;

    .line 1107
    .local v11, "oldRect":Landroid/graphics/Rect;
    iget-object v10, p0, Llenovo/design/widget/CoordinatorLayout;->mTempRect2:Landroid/graphics/Rect;

    .line 1108
    .local v10, "newRect":Landroid/graphics/Rect;
    invoke-virtual {p0, v3, v11}, Llenovo/design/widget/CoordinatorLayout;->getLastChildRect(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1109
    const/4 v12, 0x1

    invoke-virtual {p0, v3, v12, v10}, Llenovo/design/widget/CoordinatorLayout;->getChildRect(Landroid/view/View;ZLandroid/graphics/Rect;)V

    .line 1110
    invoke-virtual {v11, v10}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 1092
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1113
    :cond_3
    invoke-virtual {p0, v3, v10}, Llenovo/design/widget/CoordinatorLayout;->recordLastChildRect(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1116
    add-int/lit8 v7, v6, 0x1

    :goto_2
    if-ge v7, v4, :cond_2

    .line 1117
    iget-object v12, p0, Llenovo/design/widget/CoordinatorLayout;->mDependencySortedChildren:Ljava/util/List;

    invoke-interface {v12, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 1118
    .restart local v1    # "checkChild":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Llenovo/design/widget/CoordinatorLayout$LayoutParams;

    .line 1119
    .local v2, "checkLp":Llenovo/design/widget/CoordinatorLayout$LayoutParams;
    invoke-virtual {v2}, Llenovo/design/widget/CoordinatorLayout$LayoutParams;->getBehavior()Llenovo/design/widget/CoordinatorLayout$Behavior;

    move-result-object v0

    .line 1121
    .local v0, "b":Llenovo/design/widget/CoordinatorLayout$Behavior;
    if-eqz v0, :cond_4

    invoke-virtual {v0, p0, v1, v3}, Llenovo/design/widget/CoordinatorLayout$Behavior;->layoutDependsOn(Llenovo/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 1122
    if-nez p1, :cond_5

    invoke-virtual {v2}, Llenovo/design/widget/CoordinatorLayout$LayoutParams;->getChangedAfterNestedScroll()Z

    move-result v12

    if-eqz v12, :cond_5

    .line 1125
    invoke-virtual {v2}, Llenovo/design/widget/CoordinatorLayout$LayoutParams;->resetChangedAfterNestedScroll()V

    .line 1116
    :cond_4
    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 1129
    :cond_5
    invoke-virtual {v0, p0, v1, v3}, Llenovo/design/widget/CoordinatorLayout$Behavior;->onDependentViewChanged(Llenovo/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z

    move-result v5

    .line 1131
    .local v5, "handled":Z
    if-eqz p1, :cond_4

    .line 1134
    invoke-virtual {v2, v5}, Llenovo/design/widget/CoordinatorLayout$LayoutParams;->setChangedAfterNestedScroll(Z)V

    goto :goto_3

    .line 1139
    .end local v0    # "b":Llenovo/design/widget/CoordinatorLayout$Behavior;
    .end local v1    # "checkChild":Landroid/view/View;
    .end local v2    # "checkLp":Llenovo/design/widget/CoordinatorLayout$LayoutParams;
    .end local v3    # "child":Landroid/view/View;
    .end local v5    # "handled":Z
    .end local v7    # "j":I
    .end local v9    # "lp":Llenovo/design/widget/CoordinatorLayout$LayoutParams;
    .end local v10    # "newRect":Landroid/graphics/Rect;
    .end local v11    # "oldRect":Landroid/graphics/Rect;
    :cond_6
    return-void
.end method

.method public doViewsOverlap(Landroid/view/View;Landroid/view/View;)Z
    .locals 6
    .param p1, "first"    # Landroid/view/View;
    .param p2, "second"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1355
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_3

    .line 1356
    iget-object v0, p0, Llenovo/design/widget/CoordinatorLayout;->mTempRect1:Landroid/graphics/Rect;

    .line 1357
    .local v0, "firstRect":Landroid/graphics/Rect;
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eq v2, p0, :cond_0

    move v2, v3

    :goto_0
    invoke-virtual {p0, p1, v2, v0}, Llenovo/design/widget/CoordinatorLayout;->getChildRect(Landroid/view/View;ZLandroid/graphics/Rect;)V

    .line 1358
    iget-object v1, p0, Llenovo/design/widget/CoordinatorLayout;->mTempRect2:Landroid/graphics/Rect;

    .line 1359
    .local v1, "secondRect":Landroid/graphics/Rect;
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eq v2, p0, :cond_1

    move v2, v3

    :goto_1
    invoke-virtual {p0, p2, v2, v1}, Llenovo/design/widget/CoordinatorLayout;->getChildRect(Landroid/view/View;ZLandroid/graphics/Rect;)V

    .line 1361
    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v5, v1, Landroid/graphics/Rect;->right:I

    if-gt v2, v5, :cond_2

    iget v2, v0, Landroid/graphics/Rect;->top:I

    iget v5, v1, Landroid/graphics/Rect;->bottom:I

    if-gt v2, v5, :cond_2

    iget v2, v0, Landroid/graphics/Rect;->right:I

    iget v5, v1, Landroid/graphics/Rect;->left:I

    if-lt v2, v5, :cond_2

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    iget v5, v1, Landroid/graphics/Rect;->top:I

    if-lt v2, v5, :cond_2

    .line 1364
    .end local v0    # "firstRect":Landroid/graphics/Rect;
    .end local v1    # "secondRect":Landroid/graphics/Rect;
    :goto_2
    return v3

    .restart local v0    # "firstRect":Landroid/graphics/Rect;
    :cond_0
    move v2, v4

    .line 1357
    goto :goto_0

    .restart local v1    # "secondRect":Landroid/graphics/Rect;
    :cond_1
    move v2, v4

    .line 1359
    goto :goto_1

    :cond_2
    move v3, v4

    .line 1361
    goto :goto_2

    .end local v0    # "firstRect":Landroid/graphics/Rect;
    .end local v1    # "secondRect":Landroid/graphics/Rect;
    :cond_3
    move v3, v4

    .line 1364
    goto :goto_2
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "drawingTime"    # J

    .prologue
    .line 1058
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Llenovo/design/widget/CoordinatorLayout$LayoutParams;

    .line 1059
    .local v6, "lp":Llenovo/design/widget/CoordinatorLayout$LayoutParams;
    iget-object v0, v6, Llenovo/design/widget/CoordinatorLayout$LayoutParams;->mBehavior:Llenovo/design/widget/CoordinatorLayout$Behavior;

    if-eqz v0, :cond_1

    iget-object v0, v6, Llenovo/design/widget/CoordinatorLayout$LayoutParams;->mBehavior:Llenovo/design/widget/CoordinatorLayout$Behavior;

    invoke-virtual {v0, p0, p2}, Llenovo/design/widget/CoordinatorLayout$Behavior;->getScrimOpacity(Llenovo/design/widget/CoordinatorLayout;Landroid/view/View;)F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 1060
    iget-object v0, p0, Llenovo/design/widget/CoordinatorLayout;->mScrimPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    .line 1061
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Llenovo/design/widget/CoordinatorLayout;->mScrimPaint:Landroid/graphics/Paint;

    .line 1063
    :cond_0
    iget-object v0, p0, Llenovo/design/widget/CoordinatorLayout;->mScrimPaint:Landroid/graphics/Paint;

    iget-object v1, v6, Llenovo/design/widget/CoordinatorLayout$LayoutParams;->mBehavior:Llenovo/design/widget/CoordinatorLayout$Behavior;

    invoke-virtual {v1, p0, p2}, Llenovo/design/widget/CoordinatorLayout$Behavior;->getScrimColor(Llenovo/design/widget/CoordinatorLayout;Landroid/view/View;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1066
    invoke-virtual {p0}, Llenovo/design/widget/CoordinatorLayout;->getPaddingLeft()I

    move-result v0

    int-to-float v1, v0

    invoke-virtual {p0}, Llenovo/design/widget/CoordinatorLayout;->getPaddingTop()I

    move-result v0

    int-to-float v2, v0

    invoke-virtual {p0}, Llenovo/design/widget/CoordinatorLayout;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Llenovo/design/widget/CoordinatorLayout;->getPaddingRight()I

    move-result v3

    sub-int/2addr v0, v3

    int-to-float v3, v0

    invoke-virtual {p0}, Llenovo/design/widget/CoordinatorLayout;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Llenovo/design/widget/CoordinatorLayout;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v0, v4

    int-to-float v4, v0

    iget-object v5, p0, Llenovo/design/widget/CoordinatorLayout;->mScrimPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 1069
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v0

    return v0
.end method

.method ensurePreDrawListener()V
    .locals 5

    .prologue
    .line 1218
    const/4 v2, 0x0

    .line 1219
    .local v2, "hasDependencies":Z
    invoke-virtual {p0}, Llenovo/design/widget/CoordinatorLayout;->getChildCount()I

    move-result v1

    .line 1220
    .local v1, "childCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 1221
    invoke-virtual {p0, v3}, Llenovo/design/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1222
    .local v0, "child":Landroid/view/View;
    invoke-virtual {p0, v0}, Llenovo/design/widget/CoordinatorLayout;->hasDependencies(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1223
    const/4 v2, 0x1

    .line 1228
    .end local v0    # "child":Landroid/view/View;
    :cond_0
    iget-boolean v4, p0, Llenovo/design/widget/CoordinatorLayout;->mNeedsPreDrawListener:Z

    if-eq v2, v4, :cond_1

    .line 1229
    if-eqz v2, :cond_3

    .line 1230
    invoke-virtual {p0}, Llenovo/design/widget/CoordinatorLayout;->addPreDrawListener()V

    .line 1235
    :cond_1
    :goto_1
    return-void

    .line 1220
    .restart local v0    # "child":Landroid/view/View;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1232
    .end local v0    # "child":Landroid/view/View;
    :cond_3
    invoke-virtual {p0}, Llenovo/design/widget/CoordinatorLayout;->removePreDrawListener()V

    goto :goto_1
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 81
    invoke-virtual {p0}, Llenovo/design/widget/CoordinatorLayout;->generateDefaultLayoutParams()Llenovo/design/widget/CoordinatorLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateDefaultLayoutParams()Llenovo/design/widget/CoordinatorLayout$LayoutParams;
    .locals 2

    .prologue
    const/4 v1, -0x2

    .line 1384
    new-instance v0, Llenovo/design/widget/CoordinatorLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Llenovo/design/widget/CoordinatorLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .param p1, "x0"    # Landroid/util/AttributeSet;

    .prologue
    .line 81
    invoke-virtual {p0, p1}, Llenovo/design/widget/CoordinatorLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Llenovo/design/widget/CoordinatorLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .param p1, "x0"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 81
    invoke-virtual {p0, p1}, Llenovo/design/widget/CoordinatorLayout;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Llenovo/design/widget/CoordinatorLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Llenovo/design/widget/CoordinatorLayout$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 1369
    new-instance v0, Llenovo/design/widget/CoordinatorLayout$LayoutParams;

    invoke-virtual {p0}, Llenovo/design/widget/CoordinatorLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Llenovo/design/widget/CoordinatorLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Llenovo/design/widget/CoordinatorLayout$LayoutParams;
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 1374
    instance-of v0, p1, Llenovo/design/widget/CoordinatorLayout$LayoutParams;

    if-eqz v0, :cond_0

    .line 1375
    new-instance v0, Llenovo/design/widget/CoordinatorLayout$LayoutParams;

    check-cast p1, Llenovo/design/widget/CoordinatorLayout$LayoutParams;

    .end local p1    # "p":Landroid/view/ViewGroup$LayoutParams;
    invoke-direct {v0, p1}, Llenovo/design/widget/CoordinatorLayout$LayoutParams;-><init>(Llenovo/design/widget/CoordinatorLayout$LayoutParams;)V

    .line 1379
    :goto_0
    return-object v0

    .line 1376
    .restart local p1    # "p":Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_1

    .line 1377
    new-instance v0, Llenovo/design/widget/CoordinatorLayout$LayoutParams;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .end local p1    # "p":Landroid/view/ViewGroup$LayoutParams;
    invoke-direct {v0, p1}, Llenovo/design/widget/CoordinatorLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    goto :goto_0

    .line 1379
    .restart local p1    # "p":Landroid/view/ViewGroup$LayoutParams;
    :cond_1
    new-instance v0, Llenovo/design/widget/CoordinatorLayout$LayoutParams;

    invoke-direct {v0, p1}, Llenovo/design/widget/CoordinatorLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method getChildRect(Landroid/view/View;ZLandroid/graphics/Rect;)V
    .locals 4
    .param p1, "child"    # Landroid/view/View;
    .param p2, "transform"    # Z
    .param p3, "out"    # Landroid/graphics/Rect;

    .prologue
    const/4 v2, 0x0

    .line 807
    invoke-virtual {p1}, Landroid/view/View;->isLayoutRequested()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    .line 808
    :cond_0
    invoke-virtual {p3, v2, v2, v2, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 816
    :goto_0
    return-void

    .line 811
    :cond_1
    if-eqz p2, :cond_2

    .line 812
    invoke-virtual {p0, p1, p3}, Llenovo/design/widget/CoordinatorLayout;->getDescendantRect(Landroid/view/View;Landroid/graphics/Rect;)V

    goto :goto_0

    .line 814
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v3

    invoke-virtual {p3, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0
.end method

.method public getDependencies(Landroid/view/View;)Ljava/util/List;
    .locals 6
    .param p1, "child"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1196
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Llenovo/design/widget/CoordinatorLayout$LayoutParams;

    .line 1197
    .local v3, "lp":Llenovo/design/widget/CoordinatorLayout$LayoutParams;
    iget-object v2, p0, Llenovo/design/widget/CoordinatorLayout;->mTempDependenciesList:Ljava/util/List;

    .line 1198
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 1200
    invoke-virtual {p0}, Llenovo/design/widget/CoordinatorLayout;->getChildCount()I

    move-result v0

    .line 1201
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 1202
    invoke-virtual {p0, v1}, Llenovo/design/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1203
    .local v4, "other":Landroid/view/View;
    if-ne v4, p1, :cond_1

    .line 1201
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1206
    :cond_1
    invoke-virtual {v3, p0, p1, v4}, Llenovo/design/widget/CoordinatorLayout$LayoutParams;->dependsOn(Llenovo/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1207
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1211
    .end local v4    # "other":Landroid/view/View;
    :cond_2
    return-object v2
.end method

.method getDescendantRect(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 0
    .param p1, "descendant"    # Landroid/view/View;
    .param p2, "out"    # Landroid/graphics/Rect;

    .prologue
    .line 574
    invoke-static {p0, p1, p2}, Llenovo/design/widget/ViewGroupUtils;->getDescendantRect(Landroid/view/ViewGroup;Landroid/view/View;Landroid/graphics/Rect;)V

    .line 575
    return-void
.end method

.method getDesiredAnchoredChildRect(Landroid/view/View;ILandroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 17
    .param p1, "child"    # Landroid/view/View;
    .param p2, "layoutDirection"    # I
    .param p3, "anchorRect"    # Landroid/graphics/Rect;
    .param p4, "out"    # Landroid/graphics/Rect;

    .prologue
    .line 828
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Llenovo/design/widget/CoordinatorLayout$LayoutParams;

    .line 829
    .local v10, "lp":Llenovo/design/widget/CoordinatorLayout$LayoutParams;
    iget v14, v10, Llenovo/design/widget/CoordinatorLayout$LayoutParams;->gravity:I

    invoke-static {v14}, Llenovo/design/widget/CoordinatorLayout;->resolveAnchoredChildGravity(I)I

    move-result v14

    move/from16 v0, p2

    invoke-static {v14, v0}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v2

    .line 831
    .local v2, "absGravity":I
    iget v14, v10, Llenovo/design/widget/CoordinatorLayout$LayoutParams;->anchorGravity:I

    invoke-static {v14}, Llenovo/design/widget/CoordinatorLayout;->resolveGravity(I)I

    move-result v14

    move/from16 v0, p2

    invoke-static {v14, v0}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v1

    .line 835
    .local v1, "absAnchorGravity":I
    and-int/lit8 v8, v2, 0x7

    .line 836
    .local v8, "hgrav":I
    and-int/lit8 v12, v2, 0x70

    .line 837
    .local v12, "vgrav":I
    and-int/lit8 v3, v1, 0x7

    .line 838
    .local v3, "anchorHgrav":I
    and-int/lit8 v4, v1, 0x70

    .line 840
    .local v4, "anchorVgrav":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    .line 841
    .local v6, "childWidth":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    .line 849
    .local v5, "childHeight":I
    sparse-switch v3, :sswitch_data_0

    .line 852
    move-object/from16 v0, p3

    iget v9, v0, Landroid/graphics/Rect;->left:I

    .line 862
    .local v9, "left":I
    :goto_0
    sparse-switch v4, :sswitch_data_1

    .line 865
    move-object/from16 v0, p3

    iget v11, v0, Landroid/graphics/Rect;->top:I

    .line 876
    .local v11, "top":I
    :goto_1
    sparse-switch v8, :sswitch_data_2

    .line 879
    sub-int/2addr v9, v6

    .line 889
    :goto_2
    :sswitch_0
    sparse-switch v12, :sswitch_data_3

    .line 892
    sub-int/2addr v11, v5

    .line 902
    :goto_3
    :sswitch_1
    invoke-virtual/range {p0 .. p0}, Llenovo/design/widget/CoordinatorLayout;->getWidth()I

    move-result v13

    .line 903
    .local v13, "width":I
    invoke-virtual/range {p0 .. p0}, Llenovo/design/widget/CoordinatorLayout;->getHeight()I

    move-result v7

    .line 906
    .local v7, "height":I
    invoke-virtual/range {p0 .. p0}, Llenovo/design/widget/CoordinatorLayout;->getPaddingLeft()I

    move-result v14

    iget v15, v10, Llenovo/design/widget/CoordinatorLayout$LayoutParams;->leftMargin:I

    add-int/2addr v14, v15

    invoke-virtual/range {p0 .. p0}, Llenovo/design/widget/CoordinatorLayout;->getPaddingRight()I

    move-result v15

    sub-int v15, v13, v15

    sub-int/2addr v15, v6

    iget v0, v10, Llenovo/design/widget/CoordinatorLayout$LayoutParams;->rightMargin:I

    move/from16 v16, v0

    sub-int v15, v15, v16

    invoke-static {v9, v15}, Ljava/lang/Math;->min(II)I

    move-result v15

    invoke-static {v14, v15}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 909
    invoke-virtual/range {p0 .. p0}, Llenovo/design/widget/CoordinatorLayout;->getPaddingTop()I

    move-result v14

    iget v15, v10, Llenovo/design/widget/CoordinatorLayout$LayoutParams;->topMargin:I

    add-int/2addr v14, v15

    invoke-virtual/range {p0 .. p0}, Llenovo/design/widget/CoordinatorLayout;->getPaddingBottom()I

    move-result v15

    sub-int v15, v7, v15

    sub-int/2addr v15, v5

    iget v0, v10, Llenovo/design/widget/CoordinatorLayout$LayoutParams;->bottomMargin:I

    move/from16 v16, v0

    sub-int v15, v15, v16

    invoke-static {v11, v15}, Ljava/lang/Math;->min(II)I

    move-result v15

    invoke-static {v14, v15}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 913
    add-int v14, v9, v6

    add-int v15, v11, v5

    move-object/from16 v0, p4

    invoke-virtual {v0, v9, v11, v14, v15}, Landroid/graphics/Rect;->set(IIII)V

    .line 914
    return-void

    .line 855
    .end local v7    # "height":I
    .end local v9    # "left":I
    .end local v11    # "top":I
    .end local v13    # "width":I
    :sswitch_2
    move-object/from16 v0, p3

    iget v9, v0, Landroid/graphics/Rect;->right:I

    .line 856
    .restart local v9    # "left":I
    goto :goto_0

    .line 858
    .end local v9    # "left":I
    :sswitch_3
    move-object/from16 v0, p3

    iget v14, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->width()I

    move-result v15

    div-int/lit8 v15, v15, 0x2

    add-int v9, v14, v15

    .restart local v9    # "left":I
    goto :goto_0

    .line 868
    :sswitch_4
    move-object/from16 v0, p3

    iget v11, v0, Landroid/graphics/Rect;->bottom:I

    .line 869
    .restart local v11    # "top":I
    goto :goto_1

    .line 871
    .end local v11    # "top":I
    :sswitch_5
    move-object/from16 v0, p3

    iget v14, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->height()I

    move-result v15

    div-int/lit8 v15, v15, 0x2

    add-int v11, v14, v15

    .restart local v11    # "top":I
    goto :goto_1

    .line 885
    :sswitch_6
    div-int/lit8 v14, v6, 0x2

    sub-int/2addr v9, v14

    goto :goto_2

    .line 898
    :sswitch_7
    div-int/lit8 v14, v5, 0x2

    sub-int/2addr v11, v14

    goto :goto_3

    .line 849
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_3
        0x5 -> :sswitch_2
    .end sparse-switch

    .line 862
    :sswitch_data_1
    .sparse-switch
        0x10 -> :sswitch_5
        0x50 -> :sswitch_4
    .end sparse-switch

    .line 876
    :sswitch_data_2
    .sparse-switch
        0x1 -> :sswitch_6
        0x5 -> :sswitch_0
    .end sparse-switch

    .line 889
    :sswitch_data_3
    .sparse-switch
        0x10 -> :sswitch_7
        0x50 -> :sswitch_1
    .end sparse-switch
.end method

.method getLastChildRect(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "out"    # Landroid/graphics/Rect;

    .prologue
    .line 793
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Llenovo/design/widget/CoordinatorLayout$LayoutParams;

    .line 794
    .local v0, "lp":Llenovo/design/widget/CoordinatorLayout$LayoutParams;
    invoke-virtual {v0}, Llenovo/design/widget/CoordinatorLayout$LayoutParams;->getLastChildRect()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 795
    return-void
.end method

.method public getNestedScrollAxes()I
    .locals 1

    .prologue
    .line 1559
    iget-object v0, p0, Llenovo/design/widget/CoordinatorLayout;->mNestedScrollingParentHelper:Llenovo/design/widget/NestedScrollingParentHelper;

    invoke-virtual {v0}, Llenovo/design/widget/NestedScrollingParentHelper;->getNestedScrollAxes()I

    move-result v0

    return v0
.end method

.method getResolvedLayoutParams(Landroid/view/View;)Llenovo/design/widget/CoordinatorLayout$LayoutParams;
    .locals 7
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 522
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Llenovo/design/widget/CoordinatorLayout$LayoutParams;

    .line 523
    .local v3, "result":Llenovo/design/widget/CoordinatorLayout$LayoutParams;
    iget-boolean v4, v3, Llenovo/design/widget/CoordinatorLayout$LayoutParams;->mBehaviorResolved:Z

    if-nez v4, :cond_2

    .line 524
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 525
    .local v0, "childClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v1, 0x0

    .line 526
    .local v1, "defaultBehavior":Llenovo/design/widget/CoordinatorLayout$DefaultBehavior;
    :goto_0
    if-eqz v0, :cond_0

    const-class v4, Llenovo/design/widget/CoordinatorLayout$DefaultBehavior;

    invoke-virtual {v0, v4}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    .end local v1    # "defaultBehavior":Llenovo/design/widget/CoordinatorLayout$DefaultBehavior;
    check-cast v1, Llenovo/design/widget/CoordinatorLayout$DefaultBehavior;

    .restart local v1    # "defaultBehavior":Llenovo/design/widget/CoordinatorLayout$DefaultBehavior;
    if-nez v1, :cond_0

    .line 528
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    .line 530
    :cond_0
    if-eqz v1, :cond_1

    .line 532
    :try_start_0
    invoke-interface {v1}, Llenovo/design/widget/CoordinatorLayout$DefaultBehavior;->value()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Llenovo/design/widget/CoordinatorLayout$Behavior;

    invoke-virtual {v3, v4}, Llenovo/design/widget/CoordinatorLayout$LayoutParams;->setBehavior(Llenovo/design/widget/CoordinatorLayout$Behavior;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 538
    :cond_1
    :goto_1
    const/4 v4, 0x1

    iput-boolean v4, v3, Llenovo/design/widget/CoordinatorLayout$LayoutParams;->mBehaviorResolved:Z

    .line 540
    .end local v0    # "childClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "defaultBehavior":Llenovo/design/widget/CoordinatorLayout$DefaultBehavior;
    :cond_2
    return-object v3

    .line 533
    .restart local v0    # "childClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v1    # "defaultBehavior":Llenovo/design/widget/CoordinatorLayout$DefaultBehavior;
    :catch_0
    move-exception v2

    .line 534
    .local v2, "e":Ljava/lang/Exception;
    const-string v4, "CoordinatorLayout"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Default behavior class "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v1}, Llenovo/design/widget/CoordinatorLayout$DefaultBehavior;->value()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " could not be instantiated. Did you forget a default constructor?"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public getStatusBarBackground()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Llenovo/design/widget/CoordinatorLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method protected getSuggestedMinimumHeight()I
    .locals 3

    .prologue
    .line 584
    invoke-super {p0}, Landroid/view/ViewGroup;->getSuggestedMinimumHeight()I

    move-result v0

    invoke-virtual {p0}, Llenovo/design/widget/CoordinatorLayout;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Llenovo/design/widget/CoordinatorLayout;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method protected getSuggestedMinimumWidth()I
    .locals 3

    .prologue
    .line 579
    invoke-super {p0}, Landroid/view/ViewGroup;->getSuggestedMinimumWidth()I

    move-result v0

    invoke-virtual {p0}, Llenovo/design/widget/CoordinatorLayout;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Llenovo/design/widget/CoordinatorLayout;->getPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method hasDependencies(Landroid/view/View;)Z
    .locals 6
    .param p1, "child"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x1

    .line 1241
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Llenovo/design/widget/CoordinatorLayout$LayoutParams;

    .line 1242
    .local v2, "lp":Llenovo/design/widget/CoordinatorLayout$LayoutParams;
    iget-object v5, v2, Llenovo/design/widget/CoordinatorLayout$LayoutParams;->mAnchorView:Landroid/view/View;

    if-eqz v5, :cond_0

    .line 1256
    :goto_0
    return v4

    .line 1246
    :cond_0
    invoke-virtual {p0}, Llenovo/design/widget/CoordinatorLayout;->getChildCount()I

    move-result v0

    .line 1247
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_3

    .line 1248
    invoke-virtual {p0, v1}, Llenovo/design/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1249
    .local v3, "other":Landroid/view/View;
    if-ne v3, p1, :cond_2

    .line 1247
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1252
    :cond_2
    invoke-virtual {v2, p0, p1, v3}, Llenovo/design/widget/CoordinatorLayout$LayoutParams;->dependsOn(Llenovo/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_0

    .line 1256
    .end local v3    # "other":Landroid/view/View;
    :cond_3
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public isPointInChildBounds(Landroid/view/View;II)Z
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    .line 1341
    iget-object v0, p0, Llenovo/design/widget/CoordinatorLayout;->mTempRect1:Landroid/graphics/Rect;

    .line 1342
    .local v0, "r":Landroid/graphics/Rect;
    invoke-virtual {p0, p1, v0}, Llenovo/design/widget/CoordinatorLayout;->getDescendantRect(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1343
    invoke-virtual {v0, p2, p3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    return v1
.end method

.method offsetChildToAnchor(Landroid/view/View;I)V
    .locals 9
    .param p1, "child"    # Landroid/view/View;
    .param p2, "layoutDirection"    # I

    .prologue
    .line 1301
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Llenovo/design/widget/CoordinatorLayout$LayoutParams;

    .line 1302
    .local v6, "lp":Llenovo/design/widget/CoordinatorLayout$LayoutParams;
    iget-object v7, v6, Llenovo/design/widget/CoordinatorLayout$LayoutParams;->mAnchorView:Landroid/view/View;

    if-eqz v7, :cond_3

    .line 1303
    iget-object v0, p0, Llenovo/design/widget/CoordinatorLayout;->mTempRect1:Landroid/graphics/Rect;

    .line 1304
    .local v0, "anchorRect":Landroid/graphics/Rect;
    iget-object v2, p0, Llenovo/design/widget/CoordinatorLayout;->mTempRect2:Landroid/graphics/Rect;

    .line 1305
    .local v2, "childRect":Landroid/graphics/Rect;
    iget-object v3, p0, Llenovo/design/widget/CoordinatorLayout;->mTempRect3:Landroid/graphics/Rect;

    .line 1307
    .local v3, "desiredChildRect":Landroid/graphics/Rect;
    iget-object v7, v6, Llenovo/design/widget/CoordinatorLayout$LayoutParams;->mAnchorView:Landroid/view/View;

    invoke-virtual {p0, v7, v0}, Llenovo/design/widget/CoordinatorLayout;->getDescendantRect(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1308
    const/4 v7, 0x0

    invoke-virtual {p0, p1, v7, v2}, Llenovo/design/widget/CoordinatorLayout;->getChildRect(Landroid/view/View;ZLandroid/graphics/Rect;)V

    .line 1309
    invoke-virtual {p0, p1, p2, v0, v3}, Llenovo/design/widget/CoordinatorLayout;->getDesiredAnchoredChildRect(Landroid/view/View;ILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 1311
    iget v7, v3, Landroid/graphics/Rect;->left:I

    iget v8, v2, Landroid/graphics/Rect;->left:I

    sub-int v4, v7, v8

    .line 1312
    .local v4, "dx":I
    iget v7, v3, Landroid/graphics/Rect;->top:I

    iget v8, v2, Landroid/graphics/Rect;->top:I

    sub-int v5, v7, v8

    .line 1314
    .local v5, "dy":I
    if-eqz v4, :cond_0

    .line 1315
    invoke-virtual {p1, v4}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 1317
    :cond_0
    if-eqz v5, :cond_1

    .line 1318
    invoke-virtual {p1, v5}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 1321
    :cond_1
    if-nez v4, :cond_2

    if-eqz v5, :cond_3

    .line 1323
    :cond_2
    invoke-virtual {v6}, Llenovo/design/widget/CoordinatorLayout$LayoutParams;->getBehavior()Llenovo/design/widget/CoordinatorLayout$Behavior;

    move-result-object v1

    .line 1324
    .local v1, "b":Llenovo/design/widget/CoordinatorLayout$Behavior;
    if-eqz v1, :cond_3

    .line 1325
    iget-object v7, v6, Llenovo/design/widget/CoordinatorLayout$LayoutParams;->mAnchorView:Landroid/view/View;

    invoke-virtual {v1, p0, p1, v7}, Llenovo/design/widget/CoordinatorLayout$Behavior;->onDependentViewChanged(Llenovo/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z

    .line 1329
    .end local v0    # "anchorRect":Landroid/graphics/Rect;
    .end local v1    # "b":Llenovo/design/widget/CoordinatorLayout$Behavior;
    .end local v2    # "childRect":Landroid/graphics/Rect;
    .end local v3    # "desiredChildRect":Landroid/graphics/Rect;
    .end local v4    # "dx":I
    .end local v5    # "dy":I
    :cond_3
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 2

    .prologue
    .line 194
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 195
    invoke-direct {p0}, Llenovo/design/widget/CoordinatorLayout;->resetTouchBehaviors()V

    .line 196
    iget-boolean v1, p0, Llenovo/design/widget/CoordinatorLayout;->mNeedsPreDrawListener:Z

    if-eqz v1, :cond_1

    .line 197
    iget-object v1, p0, Llenovo/design/widget/CoordinatorLayout;->mOnPreDrawListener:Llenovo/design/widget/CoordinatorLayout$OnPreDrawListener;

    if-nez v1, :cond_0

    .line 198
    new-instance v1, Llenovo/design/widget/CoordinatorLayout$OnPreDrawListener;

    invoke-direct {v1, p0}, Llenovo/design/widget/CoordinatorLayout$OnPreDrawListener;-><init>(Llenovo/design/widget/CoordinatorLayout;)V

    iput-object v1, p0, Llenovo/design/widget/CoordinatorLayout;->mOnPreDrawListener:Llenovo/design/widget/CoordinatorLayout$OnPreDrawListener;

    .line 200
    :cond_0
    invoke-virtual {p0}, Llenovo/design/widget/CoordinatorLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 201
    .local v0, "vto":Landroid/view/ViewTreeObserver;
    iget-object v1, p0, Llenovo/design/widget/CoordinatorLayout;->mOnPreDrawListener:Llenovo/design/widget/CoordinatorLayout$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 203
    .end local v0    # "vto":Landroid/view/ViewTreeObserver;
    :cond_1
    iget-object v1, p0, Llenovo/design/widget/CoordinatorLayout;->mLastInsets:Landroid/view/WindowInsets;

    if-nez v1, :cond_2

    invoke-virtual {p0}, Llenovo/design/widget/CoordinatorLayout;->getFitsSystemWindows()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 206
    invoke-virtual {p0}, Llenovo/design/widget/CoordinatorLayout;->requestApplyInsets()V

    .line 208
    :cond_2
    const/4 v1, 0x1

    iput-boolean v1, p0, Llenovo/design/widget/CoordinatorLayout;->mIsAttachedToWindow:Z

    .line 209
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 213
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 214
    invoke-direct {p0}, Llenovo/design/widget/CoordinatorLayout;->resetTouchBehaviors()V

    .line 215
    iget-boolean v1, p0, Llenovo/design/widget/CoordinatorLayout;->mNeedsPreDrawListener:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Llenovo/design/widget/CoordinatorLayout;->mOnPreDrawListener:Llenovo/design/widget/CoordinatorLayout$OnPreDrawListener;

    if-eqz v1, :cond_0

    .line 216
    invoke-virtual {p0}, Llenovo/design/widget/CoordinatorLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 217
    .local v0, "vto":Landroid/view/ViewTreeObserver;
    iget-object v1, p0, Llenovo/design/widget/CoordinatorLayout;->mOnPreDrawListener:Llenovo/design/widget/CoordinatorLayout$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 219
    .end local v0    # "vto":Landroid/view/ViewTreeObserver;
    :cond_0
    iget-object v1, p0, Llenovo/design/widget/CoordinatorLayout;->mNestedScrollingTarget:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 220
    iget-object v1, p0, Llenovo/design/widget/CoordinatorLayout;->mNestedScrollingTarget:Landroid/view/View;

    invoke-virtual {p0, v1}, Llenovo/design/widget/CoordinatorLayout;->onStopNestedScroll(Landroid/view/View;)V

    .line 222
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Llenovo/design/widget/CoordinatorLayout;->mIsAttachedToWindow:Z

    .line 223
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v1, 0x0

    .line 760
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    .line 761
    iget-boolean v2, p0, Llenovo/design/widget/CoordinatorLayout;->mDrawStatusBarBackground:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Llenovo/design/widget/CoordinatorLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    .line 762
    iget-object v2, p0, Llenovo/design/widget/CoordinatorLayout;->mLastInsets:Landroid/view/WindowInsets;

    if-eqz v2, :cond_1

    iget-object v2, p0, Llenovo/design/widget/CoordinatorLayout;->mLastInsets:Landroid/view/WindowInsets;

    invoke-virtual {v2}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v0

    .line 763
    .local v0, "inset":I
    :goto_0
    if-lez v0, :cond_0

    .line 764
    iget-object v2, p0, Llenovo/design/widget/CoordinatorLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Llenovo/design/widget/CoordinatorLayout;->getWidth()I

    move-result v3

    invoke-virtual {v2, v1, v1, v3, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 765
    iget-object v1, p0, Llenovo/design/widget/CoordinatorLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 768
    .end local v0    # "inset":I
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 762
    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 395
    const/4 v1, 0x0

    .line 397
    .local v1, "cancelEvent":Landroid/view/MotionEvent;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 400
    .local v0, "action":I
    if-nez v0, :cond_0

    .line 401
    invoke-direct {p0}, Llenovo/design/widget/CoordinatorLayout;->resetTouchBehaviors()V

    .line 404
    :cond_0
    const/4 v3, 0x0

    invoke-direct {p0, p1, v3}, Llenovo/design/widget/CoordinatorLayout;->performIntercept(Landroid/view/MotionEvent;I)Z

    move-result v2

    .line 406
    .local v2, "intercepted":Z
    if-eqz v1, :cond_1

    .line 407
    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    .line 410
    :cond_1
    const/4 v3, 0x1

    if-eq v0, v3, :cond_2

    const/4 v3, 0x3

    if-ne v0, v3, :cond_3

    .line 411
    :cond_2
    invoke-direct {p0}, Llenovo/design/widget/CoordinatorLayout;->resetTouchBehaviors()V

    .line 414
    :cond_3
    return v2
.end method

.method protected onLayout(ZIIII)V
    .locals 7
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 745
    invoke-virtual {p0}, Llenovo/design/widget/CoordinatorLayout;->getLayoutDirection()I

    move-result v4

    .line 746
    .local v4, "layoutDirection":I
    iget-object v6, p0, Llenovo/design/widget/CoordinatorLayout;->mDependencySortedChildren:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v2

    .line 747
    .local v2, "childCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_2

    .line 748
    iget-object v6, p0, Llenovo/design/widget/CoordinatorLayout;->mDependencySortedChildren:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 749
    .local v1, "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Llenovo/design/widget/CoordinatorLayout$LayoutParams;

    .line 750
    .local v5, "lp":Llenovo/design/widget/CoordinatorLayout$LayoutParams;
    invoke-virtual {v5}, Llenovo/design/widget/CoordinatorLayout$LayoutParams;->getBehavior()Llenovo/design/widget/CoordinatorLayout$Behavior;

    move-result-object v0

    .line 752
    .local v0, "behavior":Llenovo/design/widget/CoordinatorLayout$Behavior;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p0, v1, v4}, Llenovo/design/widget/CoordinatorLayout$Behavior;->onLayoutChild(Llenovo/design/widget/CoordinatorLayout;Landroid/view/View;I)Z

    move-result v6

    if-nez v6, :cond_1

    .line 753
    :cond_0
    invoke-virtual {p0, v1, v4}, Llenovo/design/widget/CoordinatorLayout;->onLayoutChild(Landroid/view/View;I)V

    .line 747
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 756
    .end local v0    # "behavior":Llenovo/design/widget/CoordinatorLayout$Behavior;
    .end local v1    # "child":Landroid/view/View;
    .end local v5    # "lp":Llenovo/design/widget/CoordinatorLayout$LayoutParams;
    :cond_2
    return-void
.end method

.method public onLayoutChild(Landroid/view/View;I)V
    .locals 3
    .param p1, "child"    # Landroid/view/View;
    .param p2, "layoutDirection"    # I

    .prologue
    .line 729
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Llenovo/design/widget/CoordinatorLayout$LayoutParams;

    .line 730
    .local v0, "lp":Llenovo/design/widget/CoordinatorLayout$LayoutParams;
    invoke-virtual {v0}, Llenovo/design/widget/CoordinatorLayout$LayoutParams;->checkAnchorChanged()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 731
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "An anchor may not be changed after CoordinatorLayout measurement begins before layout is complete."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 734
    :cond_0
    iget-object v1, v0, Llenovo/design/widget/CoordinatorLayout$LayoutParams;->mAnchorView:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 735
    iget-object v1, v0, Llenovo/design/widget/CoordinatorLayout$LayoutParams;->mAnchorView:Landroid/view/View;

    invoke-direct {p0, p1, v1, p2}, Llenovo/design/widget/CoordinatorLayout;->layoutChildWithAnchor(Landroid/view/View;Landroid/view/View;I)V

    .line 741
    :goto_0
    return-void

    .line 736
    :cond_1
    iget v1, v0, Llenovo/design/widget/CoordinatorLayout$LayoutParams;->keyline:I

    if-ltz v1, :cond_2

    .line 737
    iget v1, v0, Llenovo/design/widget/CoordinatorLayout$LayoutParams;->keyline:I

    invoke-direct {p0, p1, v1, p2}, Llenovo/design/widget/CoordinatorLayout;->layoutChildWithKeyline(Landroid/view/View;II)V

    goto :goto_0

    .line 739
    :cond_2
    invoke-direct {p0, p1, p2}, Llenovo/design/widget/CoordinatorLayout;->layoutChild(Landroid/view/View;I)V

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 34
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 608
    invoke-direct/range {p0 .. p0}, Llenovo/design/widget/CoordinatorLayout;->prepareChildren()V

    .line 609
    invoke-virtual/range {p0 .. p0}, Llenovo/design/widget/CoordinatorLayout;->ensurePreDrawListener()V

    .line 611
    invoke-virtual/range {p0 .. p0}, Llenovo/design/widget/CoordinatorLayout;->getPaddingLeft()I

    move-result v25

    .line 612
    .local v25, "paddingLeft":I
    invoke-virtual/range {p0 .. p0}, Llenovo/design/widget/CoordinatorLayout;->getPaddingTop()I

    move-result v27

    .line 613
    .local v27, "paddingTop":I
    invoke-virtual/range {p0 .. p0}, Llenovo/design/widget/CoordinatorLayout;->getPaddingRight()I

    move-result v26

    .line 614
    .local v26, "paddingRight":I
    invoke-virtual/range {p0 .. p0}, Llenovo/design/widget/CoordinatorLayout;->getPaddingBottom()I

    move-result v24

    .line 615
    .local v24, "paddingBottom":I
    invoke-virtual/range {p0 .. p0}, Llenovo/design/widget/CoordinatorLayout;->getLayoutDirection()I

    move-result v22

    .line 616
    .local v22, "layoutDirection":I
    const/4 v3, 0x1

    move/from16 v0, v22

    if-ne v0, v3, :cond_6

    const/16 v19, 0x1

    .line 617
    .local v19, "isRtl":Z
    :goto_0
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v30

    .line 618
    .local v30, "widthMode":I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v32

    .line 619
    .local v32, "widthSize":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v13

    .line 620
    .local v13, "heightMode":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v15

    .line 622
    .local v15, "heightSize":I
    add-int v31, v25, v26

    .line 623
    .local v31, "widthPadding":I
    add-int v14, v27, v24

    .line 624
    .local v14, "heightPadding":I
    invoke-virtual/range {p0 .. p0}, Llenovo/design/widget/CoordinatorLayout;->getSuggestedMinimumWidth()I

    move-result v33

    .line 625
    .local v33, "widthUsed":I
    invoke-virtual/range {p0 .. p0}, Llenovo/design/widget/CoordinatorLayout;->getSuggestedMinimumHeight()I

    move-result v16

    .line 626
    .local v16, "heightUsed":I
    const/4 v11, 0x0

    .line 628
    .local v11, "childState":I
    move-object/from16 v0, p0

    iget-object v3, v0, Llenovo/design/widget/CoordinatorLayout;->mLastInsets:Landroid/view/WindowInsets;

    if-eqz v3, :cond_7

    invoke-virtual/range {p0 .. p0}, Llenovo/design/widget/CoordinatorLayout;->getFitsSystemWindows()Z

    move-result v3

    if-eqz v3, :cond_7

    const/4 v9, 0x1

    .line 630
    .local v9, "applyInsets":Z
    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Llenovo/design/widget/CoordinatorLayout;->mDependencySortedChildren:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v10

    .line 631
    .local v10, "childCount":I
    const/16 v18, 0x0

    .local v18, "i":I
    :goto_2
    move/from16 v0, v18

    if-ge v0, v10, :cond_b

    .line 632
    move-object/from16 v0, p0

    iget-object v3, v0, Llenovo/design/widget/CoordinatorLayout;->mDependencySortedChildren:Ljava/util/List;

    move/from16 v0, v18

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 633
    .local v4, "child":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v23

    check-cast v23, Llenovo/design/widget/CoordinatorLayout$LayoutParams;

    .line 635
    .local v23, "lp":Llenovo/design/widget/CoordinatorLayout$LayoutParams;
    const/4 v6, 0x0

    .line 636
    .local v6, "keylineWidthUsed":I
    move-object/from16 v0, v23

    iget v3, v0, Llenovo/design/widget/CoordinatorLayout$LayoutParams;->keyline:I

    if-ltz v3, :cond_2

    if-eqz v30, :cond_2

    .line 637
    move-object/from16 v0, v23

    iget v3, v0, Llenovo/design/widget/CoordinatorLayout$LayoutParams;->keyline:I

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Llenovo/design/widget/CoordinatorLayout;->getKeyline(I)I

    move-result v21

    .line 638
    .local v21, "keylinePos":I
    move-object/from16 v0, v23

    iget v3, v0, Llenovo/design/widget/CoordinatorLayout$LayoutParams;->gravity:I

    invoke-static {v3}, Llenovo/design/widget/CoordinatorLayout;->resolveKeylineGravity(I)I

    move-result v3

    move/from16 v0, v22

    invoke-static {v3, v0}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v3

    and-int/lit8 v20, v3, 0x7

    .line 641
    .local v20, "keylineGravity":I
    const/4 v3, 0x3

    move/from16 v0, v20

    if-ne v0, v3, :cond_0

    if-eqz v19, :cond_1

    :cond_0
    const/4 v3, 0x5

    move/from16 v0, v20

    if-ne v0, v3, :cond_8

    if-eqz v19, :cond_8

    .line 643
    :cond_1
    const/4 v3, 0x0

    sub-int v8, v32, v26

    sub-int v8, v8, v21

    invoke-static {v3, v8}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 650
    .end local v20    # "keylineGravity":I
    .end local v21    # "keylinePos":I
    :cond_2
    :goto_3
    move/from16 v5, p1

    .line 651
    .local v5, "childWidthMeasureSpec":I
    move/from16 v7, p2

    .line 652
    .local v7, "childHeightMeasureSpec":I
    if-eqz v9, :cond_3

    invoke-virtual {v4}, Landroid/view/View;->getFitsSystemWindows()Z

    move-result v3

    if-nez v3, :cond_3

    .line 655
    move-object/from16 v0, p0

    iget-object v3, v0, Llenovo/design/widget/CoordinatorLayout;->mLastInsets:Landroid/view/WindowInsets;

    invoke-virtual {v3}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v8, v0, Llenovo/design/widget/CoordinatorLayout;->mLastInsets:Landroid/view/WindowInsets;

    invoke-virtual {v8}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    move-result v8

    add-int v17, v3, v8

    .line 657
    .local v17, "horizInsets":I
    move-object/from16 v0, p0

    iget-object v3, v0, Llenovo/design/widget/CoordinatorLayout;->mLastInsets:Landroid/view/WindowInsets;

    invoke-virtual {v3}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v8, v0, Llenovo/design/widget/CoordinatorLayout;->mLastInsets:Landroid/view/WindowInsets;

    invoke-virtual {v8}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v8

    add-int v28, v3, v8

    .line 660
    .local v28, "vertInsets":I
    sub-int v3, v32, v17

    move/from16 v0, v30

    invoke-static {v3, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 662
    sub-int v3, v15, v28

    invoke-static {v3, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 666
    .end local v17    # "horizInsets":I
    .end local v28    # "vertInsets":I
    :cond_3
    invoke-virtual/range {v23 .. v23}, Llenovo/design/widget/CoordinatorLayout$LayoutParams;->getBehavior()Llenovo/design/widget/CoordinatorLayout$Behavior;

    move-result-object v2

    .line 667
    .local v2, "b":Llenovo/design/widget/CoordinatorLayout$Behavior;
    if-eqz v2, :cond_4

    const/4 v8, 0x0

    move-object/from16 v3, p0

    invoke-virtual/range {v2 .. v8}, Llenovo/design/widget/CoordinatorLayout$Behavior;->onMeasureChild(Llenovo/design/widget/CoordinatorLayout;Landroid/view/View;IIII)Z

    move-result v3

    if-nez v3, :cond_5

    .line 669
    :cond_4
    const/4 v8, 0x0

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v8}, Llenovo/design/widget/CoordinatorLayout;->onMeasureChild(Landroid/view/View;IIII)V

    .line 673
    :cond_5
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    add-int v3, v3, v31

    move-object/from16 v0, v23

    iget v8, v0, Llenovo/design/widget/CoordinatorLayout$LayoutParams;->leftMargin:I

    add-int/2addr v3, v8

    move-object/from16 v0, v23

    iget v8, v0, Llenovo/design/widget/CoordinatorLayout$LayoutParams;->rightMargin:I

    add-int/2addr v3, v8

    move/from16 v0, v33

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v33

    .line 676
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v3, v14

    move-object/from16 v0, v23

    iget v8, v0, Llenovo/design/widget/CoordinatorLayout$LayoutParams;->topMargin:I

    add-int/2addr v3, v8

    move-object/from16 v0, v23

    iget v8, v0, Llenovo/design/widget/CoordinatorLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v3, v8

    move/from16 v0, v16

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v16

    .line 678
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredState()I

    move-result v3

    invoke-static {v11, v3}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v11

    .line 631
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_2

    .line 616
    .end local v2    # "b":Llenovo/design/widget/CoordinatorLayout$Behavior;
    .end local v4    # "child":Landroid/view/View;
    .end local v5    # "childWidthMeasureSpec":I
    .end local v6    # "keylineWidthUsed":I
    .end local v7    # "childHeightMeasureSpec":I
    .end local v9    # "applyInsets":Z
    .end local v10    # "childCount":I
    .end local v11    # "childState":I
    .end local v13    # "heightMode":I
    .end local v14    # "heightPadding":I
    .end local v15    # "heightSize":I
    .end local v16    # "heightUsed":I
    .end local v18    # "i":I
    .end local v19    # "isRtl":Z
    .end local v23    # "lp":Llenovo/design/widget/CoordinatorLayout$LayoutParams;
    .end local v30    # "widthMode":I
    .end local v31    # "widthPadding":I
    .end local v32    # "widthSize":I
    .end local v33    # "widthUsed":I
    :cond_6
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 628
    .restart local v11    # "childState":I
    .restart local v13    # "heightMode":I
    .restart local v14    # "heightPadding":I
    .restart local v15    # "heightSize":I
    .restart local v16    # "heightUsed":I
    .restart local v19    # "isRtl":Z
    .restart local v30    # "widthMode":I
    .restart local v31    # "widthPadding":I
    .restart local v32    # "widthSize":I
    .restart local v33    # "widthUsed":I
    :cond_7
    const/4 v9, 0x0

    goto/16 :goto_1

    .line 644
    .restart local v4    # "child":Landroid/view/View;
    .restart local v6    # "keylineWidthUsed":I
    .restart local v9    # "applyInsets":Z
    .restart local v10    # "childCount":I
    .restart local v18    # "i":I
    .restart local v20    # "keylineGravity":I
    .restart local v21    # "keylinePos":I
    .restart local v23    # "lp":Llenovo/design/widget/CoordinatorLayout$LayoutParams;
    :cond_8
    const/4 v3, 0x5

    move/from16 v0, v20

    if-ne v0, v3, :cond_9

    if-eqz v19, :cond_a

    :cond_9
    const/4 v3, 0x3

    move/from16 v0, v20

    if-ne v0, v3, :cond_2

    if-eqz v19, :cond_2

    .line 646
    :cond_a
    const/4 v3, 0x0

    sub-int v8, v21, v25

    invoke-static {v3, v8}, Ljava/lang/Math;->max(II)I

    move-result v6

    goto/16 :goto_3

    .line 682
    .end local v4    # "child":Landroid/view/View;
    .end local v6    # "keylineWidthUsed":I
    .end local v20    # "keylineGravity":I
    .end local v21    # "keylinePos":I
    .end local v23    # "lp":Llenovo/design/widget/CoordinatorLayout$LayoutParams;
    :cond_b
    const/high16 v3, -0x1000000

    and-int/2addr v3, v11

    move/from16 v0, v33

    move/from16 v1, p1

    invoke-static {v0, v1, v3}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v29

    .line 684
    .local v29, "width":I
    shl-int/lit8 v3, v11, 0x10

    move/from16 v0, v16

    move/from16 v1, p2

    invoke-static {v0, v1, v3}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v12

    .line 686
    .local v12, "height":I
    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1, v12}, Llenovo/design/widget/CoordinatorLayout;->setMeasuredDimension(II)V

    .line 687
    return-void
.end method

.method public onMeasureChild(Landroid/view/View;IIII)V
    .locals 0
    .param p1, "child"    # Landroid/view/View;
    .param p2, "parentWidthMeasureSpec"    # I
    .param p3, "widthUsed"    # I
    .param p4, "parentHeightMeasureSpec"    # I
    .param p5, "heightUsed"    # I

    .prologue
    .line 602
    invoke-virtual/range {p0 .. p5}, Llenovo/design/widget/CoordinatorLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 604
    return-void
.end method

.method public onNestedFling(Landroid/view/View;FFZ)Z
    .locals 11
    .param p1, "target"    # Landroid/view/View;
    .param p2, "velocityX"    # F
    .param p3, "velocityY"    # F
    .param p4, "consumed"    # Z

    .prologue
    .line 1517
    const/4 v8, 0x0

    .line 1519
    .local v8, "handled":Z
    invoke-virtual {p0}, Llenovo/design/widget/CoordinatorLayout;->getChildCount()I

    move-result v7

    .line 1520
    .local v7, "childCount":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    if-ge v9, v7, :cond_2

    .line 1521
    invoke-virtual {p0, v9}, Llenovo/design/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1522
    .local v2, "view":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Llenovo/design/widget/CoordinatorLayout$LayoutParams;

    .line 1523
    .local v10, "lp":Llenovo/design/widget/CoordinatorLayout$LayoutParams;
    invoke-virtual {v10}, Llenovo/design/widget/CoordinatorLayout$LayoutParams;->isNestedScrollAccepted()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1520
    :cond_0
    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 1527
    :cond_1
    invoke-virtual {v10}, Llenovo/design/widget/CoordinatorLayout$LayoutParams;->getBehavior()Llenovo/design/widget/CoordinatorLayout$Behavior;

    move-result-object v0

    .line 1528
    .local v0, "viewBehavior":Llenovo/design/widget/CoordinatorLayout$Behavior;
    if-eqz v0, :cond_0

    move-object v1, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    .line 1529
    invoke-virtual/range {v0 .. v6}, Llenovo/design/widget/CoordinatorLayout$Behavior;->onNestedFling(Llenovo/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;FFZ)Z

    move-result v1

    or-int/2addr v8, v1

    goto :goto_1

    .line 1533
    .end local v0    # "viewBehavior":Llenovo/design/widget/CoordinatorLayout$Behavior;
    .end local v2    # "view":Landroid/view/View;
    .end local v10    # "lp":Llenovo/design/widget/CoordinatorLayout$LayoutParams;
    :cond_2
    if-eqz v8, :cond_3

    .line 1534
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Llenovo/design/widget/CoordinatorLayout;->dispatchOnDependentViewChanged(Z)V

    .line 1536
    :cond_3
    return v8
.end method

.method public onNestedPreFling(Landroid/view/View;FF)Z
    .locals 10
    .param p1, "target"    # Landroid/view/View;
    .param p2, "velocityX"    # F
    .param p3, "velocityY"    # F

    .prologue
    .line 1540
    const/4 v7, 0x0

    .line 1542
    .local v7, "handled":Z
    invoke-virtual {p0}, Llenovo/design/widget/CoordinatorLayout;->getChildCount()I

    move-result v6

    .line 1543
    .local v6, "childCount":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    if-ge v8, v6, :cond_2

    .line 1544
    invoke-virtual {p0, v8}, Llenovo/design/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1545
    .local v2, "view":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Llenovo/design/widget/CoordinatorLayout$LayoutParams;

    .line 1546
    .local v9, "lp":Llenovo/design/widget/CoordinatorLayout$LayoutParams;
    invoke-virtual {v9}, Llenovo/design/widget/CoordinatorLayout$LayoutParams;->isNestedScrollAccepted()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1543
    :cond_0
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 1550
    :cond_1
    invoke-virtual {v9}, Llenovo/design/widget/CoordinatorLayout$LayoutParams;->getBehavior()Llenovo/design/widget/CoordinatorLayout$Behavior;

    move-result-object v0

    .line 1551
    .local v0, "viewBehavior":Llenovo/design/widget/CoordinatorLayout$Behavior;
    if-eqz v0, :cond_0

    move-object v1, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    .line 1552
    invoke-virtual/range {v0 .. v5}, Llenovo/design/widget/CoordinatorLayout$Behavior;->onNestedPreFling(Llenovo/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;FF)Z

    move-result v1

    or-int/2addr v7, v1

    goto :goto_1

    .line 1555
    .end local v0    # "viewBehavior":Llenovo/design/widget/CoordinatorLayout$Behavior;
    .end local v2    # "view":Landroid/view/View;
    .end local v9    # "lp":Llenovo/design/widget/CoordinatorLayout$LayoutParams;
    :cond_2
    return v7
.end method

.method public onNestedPreScroll(Landroid/view/View;II[I)V
    .locals 13
    .param p1, "target"    # Landroid/view/View;
    .param p2, "dx"    # I
    .param p3, "dy"    # I
    .param p4, "consumed"    # [I

    .prologue
    .line 1482
    const/4 v11, 0x0

    .line 1483
    .local v11, "xConsumed":I
    const/4 v12, 0x0

    .line 1484
    .local v12, "yConsumed":I
    const/4 v7, 0x0

    .line 1486
    .local v7, "accepted":Z
    invoke-virtual {p0}, Llenovo/design/widget/CoordinatorLayout;->getChildCount()I

    move-result v8

    .line 1487
    .local v8, "childCount":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    if-ge v9, v8, :cond_4

    .line 1488
    invoke-virtual {p0, v9}, Llenovo/design/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1489
    .local v2, "view":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Llenovo/design/widget/CoordinatorLayout$LayoutParams;

    .line 1490
    .local v10, "lp":Llenovo/design/widget/CoordinatorLayout$LayoutParams;
    invoke-virtual {v10}, Llenovo/design/widget/CoordinatorLayout$LayoutParams;->isNestedScrollAccepted()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1487
    :cond_0
    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 1494
    :cond_1
    invoke-virtual {v10}, Llenovo/design/widget/CoordinatorLayout$LayoutParams;->getBehavior()Llenovo/design/widget/CoordinatorLayout$Behavior;

    move-result-object v0

    .line 1495
    .local v0, "viewBehavior":Llenovo/design/widget/CoordinatorLayout$Behavior;
    if-eqz v0, :cond_0

    .line 1496
    iget-object v1, p0, Llenovo/design/widget/CoordinatorLayout;->mTempIntPair:[I

    const/4 v3, 0x0

    iget-object v4, p0, Llenovo/design/widget/CoordinatorLayout;->mTempIntPair:[I

    const/4 v5, 0x1

    const/4 v6, 0x0

    aput v6, v4, v5

    aput v6, v1, v3

    .line 1497
    iget-object v6, p0, Llenovo/design/widget/CoordinatorLayout;->mTempIntPair:[I

    move-object v1, p0

    move-object v3, p1

    move v4, p2

    move/from16 v5, p3

    invoke-virtual/range {v0 .. v6}, Llenovo/design/widget/CoordinatorLayout$Behavior;->onNestedPreScroll(Llenovo/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;II[I)V

    .line 1499
    if-lez p2, :cond_2

    iget-object v1, p0, Llenovo/design/widget/CoordinatorLayout;->mTempIntPair:[I

    const/4 v3, 0x0

    aget v1, v1, v3

    invoke-static {v11, v1}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 1501
    :goto_2
    if-lez p3, :cond_3

    iget-object v1, p0, Llenovo/design/widget/CoordinatorLayout;->mTempIntPair:[I

    const/4 v3, 0x1

    aget v1, v1, v3

    invoke-static {v12, v1}, Ljava/lang/Math;->max(II)I

    move-result v12

    .line 1504
    :goto_3
    const/4 v7, 0x1

    goto :goto_1

    .line 1499
    :cond_2
    iget-object v1, p0, Llenovo/design/widget/CoordinatorLayout;->mTempIntPair:[I

    const/4 v3, 0x0

    aget v1, v1, v3

    invoke-static {v11, v1}, Ljava/lang/Math;->min(II)I

    move-result v11

    goto :goto_2

    .line 1501
    :cond_3
    iget-object v1, p0, Llenovo/design/widget/CoordinatorLayout;->mTempIntPair:[I

    const/4 v3, 0x1

    aget v1, v1, v3

    invoke-static {v12, v1}, Ljava/lang/Math;->min(II)I

    move-result v12

    goto :goto_3

    .line 1508
    .end local v0    # "viewBehavior":Llenovo/design/widget/CoordinatorLayout$Behavior;
    .end local v2    # "view":Landroid/view/View;
    .end local v10    # "lp":Llenovo/design/widget/CoordinatorLayout$LayoutParams;
    :cond_4
    const/4 v1, 0x0

    aput v11, p4, v1

    .line 1509
    const/4 v1, 0x1

    aput v12, p4, v1

    .line 1511
    if-eqz v7, :cond_5

    .line 1512
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Llenovo/design/widget/CoordinatorLayout;->dispatchOnDependentViewChanged(Z)V

    .line 1514
    :cond_5
    return-void
.end method

.method public onNestedScroll(Landroid/view/View;IIII)V
    .locals 12
    .param p1, "target"    # Landroid/view/View;
    .param p2, "dxConsumed"    # I
    .param p3, "dyConsumed"    # I
    .param p4, "dxUnconsumed"    # I
    .param p5, "dyUnconsumed"    # I

    .prologue
    .line 1458
    invoke-virtual {p0}, Llenovo/design/widget/CoordinatorLayout;->getChildCount()I

    move-result v9

    .line 1459
    .local v9, "childCount":I
    const/4 v8, 0x0

    .line 1461
    .local v8, "accepted":Z
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    if-ge v10, v9, :cond_2

    .line 1462
    invoke-virtual {p0, v10}, Llenovo/design/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1463
    .local v2, "view":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Llenovo/design/widget/CoordinatorLayout$LayoutParams;

    .line 1464
    .local v11, "lp":Llenovo/design/widget/CoordinatorLayout$LayoutParams;
    invoke-virtual {v11}, Llenovo/design/widget/CoordinatorLayout$LayoutParams;->isNestedScrollAccepted()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1461
    :cond_0
    :goto_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 1468
    :cond_1
    invoke-virtual {v11}, Llenovo/design/widget/CoordinatorLayout$LayoutParams;->getBehavior()Llenovo/design/widget/CoordinatorLayout$Behavior;

    move-result-object v0

    .line 1469
    .local v0, "viewBehavior":Llenovo/design/widget/CoordinatorLayout$Behavior;
    if-eqz v0, :cond_0

    move-object v1, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    .line 1470
    invoke-virtual/range {v0 .. v7}, Llenovo/design/widget/CoordinatorLayout$Behavior;->onNestedScroll(Llenovo/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;IIII)V

    .line 1472
    const/4 v8, 0x1

    goto :goto_1

    .line 1476
    .end local v0    # "viewBehavior":Llenovo/design/widget/CoordinatorLayout$Behavior;
    .end local v2    # "view":Landroid/view/View;
    .end local v11    # "lp":Llenovo/design/widget/CoordinatorLayout$LayoutParams;
    :cond_2
    if-eqz v8, :cond_3

    .line 1477
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Llenovo/design/widget/CoordinatorLayout;->dispatchOnDependentViewChanged(Z)V

    .line 1479
    :cond_3
    return-void
.end method

.method public onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V
    .locals 9
    .param p1, "child"    # Landroid/view/View;
    .param p2, "target"    # Landroid/view/View;
    .param p3, "nestedScrollAxes"    # I

    .prologue
    .line 1414
    iget-object v1, p0, Llenovo/design/widget/CoordinatorLayout;->mNestedScrollingParentHelper:Llenovo/design/widget/NestedScrollingParentHelper;

    invoke-virtual {v1, p1, p2, p3}, Llenovo/design/widget/NestedScrollingParentHelper;->onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V

    .line 1415
    iput-object p1, p0, Llenovo/design/widget/CoordinatorLayout;->mNestedScrollingDirectChild:Landroid/view/View;

    .line 1416
    iput-object p2, p0, Llenovo/design/widget/CoordinatorLayout;->mNestedScrollingTarget:Landroid/view/View;

    .line 1418
    invoke-virtual {p0}, Llenovo/design/widget/CoordinatorLayout;->getChildCount()I

    move-result v6

    .line 1419
    .local v6, "childCount":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, v6, :cond_2

    .line 1420
    invoke-virtual {p0, v7}, Llenovo/design/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1421
    .local v2, "view":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Llenovo/design/widget/CoordinatorLayout$LayoutParams;

    .line 1422
    .local v8, "lp":Llenovo/design/widget/CoordinatorLayout$LayoutParams;
    invoke-virtual {v8}, Llenovo/design/widget/CoordinatorLayout$LayoutParams;->isNestedScrollAccepted()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1419
    :cond_0
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 1426
    :cond_1
    invoke-virtual {v8}, Llenovo/design/widget/CoordinatorLayout$LayoutParams;->getBehavior()Llenovo/design/widget/CoordinatorLayout$Behavior;

    move-result-object v0

    .line 1427
    .local v0, "viewBehavior":Llenovo/design/widget/CoordinatorLayout$Behavior;
    if-eqz v0, :cond_0

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    .line 1428
    invoke-virtual/range {v0 .. v5}, Llenovo/design/widget/CoordinatorLayout$Behavior;->onNestedScrollAccepted(Llenovo/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;Landroid/view/View;I)V

    goto :goto_1

    .line 1431
    .end local v0    # "viewBehavior":Llenovo/design/widget/CoordinatorLayout$Behavior;
    .end local v2    # "view":Landroid/view/View;
    .end local v8    # "lp":Llenovo/design/widget/CoordinatorLayout$LayoutParams;
    :cond_2
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 10
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 2538
    move-object v8, p1

    check-cast v8, Llenovo/design/widget/CoordinatorLayout$SavedState;

    .line 2539
    .local v8, "ss":Llenovo/design/widget/CoordinatorLayout$SavedState;
    invoke-virtual {v8}, Llenovo/design/widget/CoordinatorLayout$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v9

    invoke-super {p0, v9}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 2541
    iget-object v1, v8, Llenovo/design/widget/CoordinatorLayout$SavedState;->behaviorStates:Landroid/util/SparseArray;

    .line 2543
    .local v1, "behaviorStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    const/4 v5, 0x0

    .local v5, "i":I
    invoke-virtual {p0}, Llenovo/design/widget/CoordinatorLayout;->getChildCount()I

    move-result v4

    .local v4, "count":I
    :goto_0
    if-ge v5, v4, :cond_1

    .line 2544
    invoke-virtual {p0, v5}, Llenovo/design/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 2545
    .local v2, "child":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v3

    .line 2546
    .local v3, "childId":I
    invoke-virtual {p0, v2}, Llenovo/design/widget/CoordinatorLayout;->getResolvedLayoutParams(Landroid/view/View;)Llenovo/design/widget/CoordinatorLayout$LayoutParams;

    move-result-object v6

    .line 2547
    .local v6, "lp":Llenovo/design/widget/CoordinatorLayout$LayoutParams;
    invoke-virtual {v6}, Llenovo/design/widget/CoordinatorLayout$LayoutParams;->getBehavior()Llenovo/design/widget/CoordinatorLayout$Behavior;

    move-result-object v0

    .line 2549
    .local v0, "b":Llenovo/design/widget/CoordinatorLayout$Behavior;
    const/4 v9, -0x1

    if-eq v3, v9, :cond_0

    if-eqz v0, :cond_0

    .line 2550
    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/Parcelable;

    .line 2551
    .local v7, "savedState":Landroid/os/Parcelable;
    if-eqz v7, :cond_0

    .line 2552
    invoke-virtual {v0, p0, v2, v7}, Llenovo/design/widget/CoordinatorLayout$Behavior;->onRestoreInstanceState(Llenovo/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/os/Parcelable;)V

    .line 2543
    .end local v7    # "savedState":Landroid/os/Parcelable;
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 2556
    .end local v0    # "b":Llenovo/design/widget/CoordinatorLayout$Behavior;
    .end local v2    # "child":Landroid/view/View;
    .end local v3    # "childId":I
    .end local v6    # "lp":Llenovo/design/widget/CoordinatorLayout$LayoutParams;
    :cond_1
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 10

    .prologue
    .line 2560
    new-instance v7, Llenovo/design/widget/CoordinatorLayout$SavedState;

    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v9

    invoke-direct {v7, v9}, Llenovo/design/widget/CoordinatorLayout$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 2562
    .local v7, "ss":Llenovo/design/widget/CoordinatorLayout$SavedState;
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 2563
    .local v1, "behaviorStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    const/4 v5, 0x0

    .local v5, "i":I
    invoke-virtual {p0}, Llenovo/design/widget/CoordinatorLayout;->getChildCount()I

    move-result v4

    .local v4, "count":I
    :goto_0
    if-ge v5, v4, :cond_1

    .line 2564
    invoke-virtual {p0, v5}, Llenovo/design/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 2565
    .local v2, "child":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v3

    .line 2566
    .local v3, "childId":I
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Llenovo/design/widget/CoordinatorLayout$LayoutParams;

    .line 2567
    .local v6, "lp":Llenovo/design/widget/CoordinatorLayout$LayoutParams;
    invoke-virtual {v6}, Llenovo/design/widget/CoordinatorLayout$LayoutParams;->getBehavior()Llenovo/design/widget/CoordinatorLayout$Behavior;

    move-result-object v0

    .line 2569
    .local v0, "b":Llenovo/design/widget/CoordinatorLayout$Behavior;
    const/4 v9, -0x1

    if-eq v3, v9, :cond_0

    if-eqz v0, :cond_0

    .line 2571
    invoke-virtual {v0, p0, v2}, Llenovo/design/widget/CoordinatorLayout$Behavior;->onSaveInstanceState(Llenovo/design/widget/CoordinatorLayout;Landroid/view/View;)Landroid/os/Parcelable;

    move-result-object v8

    .line 2572
    .local v8, "state":Landroid/os/Parcelable;
    if-eqz v8, :cond_0

    .line 2573
    invoke-virtual {v1, v3, v8}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 2563
    .end local v8    # "state":Landroid/os/Parcelable;
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 2577
    .end local v0    # "b":Llenovo/design/widget/CoordinatorLayout$Behavior;
    .end local v2    # "child":Landroid/view/View;
    .end local v3    # "childId":I
    .end local v6    # "lp":Llenovo/design/widget/CoordinatorLayout$LayoutParams;
    :cond_1
    iput-object v1, v7, Llenovo/design/widget/CoordinatorLayout$SavedState;->behaviorStates:Landroid/util/SparseArray;

    .line 2578
    return-object v7
.end method

.method public onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z
    .locals 11
    .param p1, "child"    # Landroid/view/View;
    .param p2, "target"    # Landroid/view/View;
    .param p3, "nestedScrollAxes"    # I

    .prologue
    .line 1393
    const/4 v8, 0x0

    .line 1395
    .local v8, "handled":Z
    invoke-virtual {p0}, Llenovo/design/widget/CoordinatorLayout;->getChildCount()I

    move-result v7

    .line 1396
    .local v7, "childCount":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    if-ge v9, v7, :cond_1

    .line 1397
    invoke-virtual {p0, v9}, Llenovo/design/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1398
    .local v2, "view":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Llenovo/design/widget/CoordinatorLayout$LayoutParams;

    .line 1399
    .local v10, "lp":Llenovo/design/widget/CoordinatorLayout$LayoutParams;
    invoke-virtual {v10}, Llenovo/design/widget/CoordinatorLayout$LayoutParams;->getBehavior()Llenovo/design/widget/CoordinatorLayout$Behavior;

    move-result-object v0

    .line 1400
    .local v0, "viewBehavior":Llenovo/design/widget/CoordinatorLayout$Behavior;
    if-eqz v0, :cond_0

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    .line 1401
    invoke-virtual/range {v0 .. v5}, Llenovo/design/widget/CoordinatorLayout$Behavior;->onStartNestedScroll(Llenovo/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;Landroid/view/View;I)Z

    move-result v6

    .line 1403
    .local v6, "accepted":Z
    or-int/2addr v8, v6

    .line 1405
    invoke-virtual {v10, v6}, Llenovo/design/widget/CoordinatorLayout$LayoutParams;->acceptNestedScroll(Z)V

    .line 1396
    .end local v6    # "accepted":Z
    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 1407
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v10, v1}, Llenovo/design/widget/CoordinatorLayout$LayoutParams;->acceptNestedScroll(Z)V

    goto :goto_1

    .line 1410
    .end local v0    # "viewBehavior":Llenovo/design/widget/CoordinatorLayout$Behavior;
    .end local v2    # "view":Landroid/view/View;
    .end local v10    # "lp":Llenovo/design/widget/CoordinatorLayout$LayoutParams;
    :cond_1
    return v8
.end method

.method public onStopNestedScroll(Landroid/view/View;)V
    .locals 7
    .param p1, "target"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x0

    .line 1434
    iget-object v5, p0, Llenovo/design/widget/CoordinatorLayout;->mNestedScrollingParentHelper:Llenovo/design/widget/NestedScrollingParentHelper;

    invoke-virtual {v5, p1}, Llenovo/design/widget/NestedScrollingParentHelper;->onStopNestedScroll(Landroid/view/View;)V

    .line 1436
    invoke-virtual {p0}, Llenovo/design/widget/CoordinatorLayout;->getChildCount()I

    move-result v0

    .line 1437
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 1438
    invoke-virtual {p0, v1}, Llenovo/design/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1439
    .local v3, "view":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Llenovo/design/widget/CoordinatorLayout$LayoutParams;

    .line 1440
    .local v2, "lp":Llenovo/design/widget/CoordinatorLayout$LayoutParams;
    invoke-virtual {v2}, Llenovo/design/widget/CoordinatorLayout$LayoutParams;->isNestedScrollAccepted()Z

    move-result v5

    if-nez v5, :cond_0

    .line 1437
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1444
    :cond_0
    invoke-virtual {v2}, Llenovo/design/widget/CoordinatorLayout$LayoutParams;->getBehavior()Llenovo/design/widget/CoordinatorLayout$Behavior;

    move-result-object v4

    .line 1445
    .local v4, "viewBehavior":Llenovo/design/widget/CoordinatorLayout$Behavior;
    if-eqz v4, :cond_1

    .line 1446
    invoke-virtual {v4, p0, v3, p1}, Llenovo/design/widget/CoordinatorLayout$Behavior;->onStopNestedScroll(Llenovo/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)V

    .line 1448
    :cond_1
    invoke-virtual {v2}, Llenovo/design/widget/CoordinatorLayout$LayoutParams;->resetNestedScroll()V

    .line 1449
    invoke-virtual {v2}, Llenovo/design/widget/CoordinatorLayout$LayoutParams;->resetChangedAfterNestedScroll()V

    goto :goto_1

    .line 1452
    .end local v2    # "lp":Llenovo/design/widget/CoordinatorLayout$LayoutParams;
    .end local v3    # "view":Landroid/view/View;
    .end local v4    # "viewBehavior":Llenovo/design/widget/CoordinatorLayout$Behavior;
    :cond_2
    iput-object v6, p0, Llenovo/design/widget/CoordinatorLayout;->mNestedScrollingDirectChild:Landroid/view/View;

    .line 1453
    iput-object v6, p0, Llenovo/design/widget/CoordinatorLayout;->mNestedScrollingTarget:Landroid/view/View;

    .line 1454
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 419
    const/4 v12, 0x0

    .line 420
    .local v12, "handled":Z
    const/4 v11, 0x0

    .line 421
    .local v11, "cancelSuper":Z
    const/4 v10, 0x0

    .line 423
    .local v10, "cancelEvent":Landroid/view/MotionEvent;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v8

    .line 425
    .local v8, "action":I
    iget-object v2, p0, Llenovo/design/widget/CoordinatorLayout;->mBehaviorTouchView:Landroid/view/View;

    if-nez v2, :cond_0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v2}, Llenovo/design/widget/CoordinatorLayout;->performIntercept(Landroid/view/MotionEvent;I)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 428
    :cond_0
    iget-object v2, p0, Llenovo/design/widget/CoordinatorLayout;->mBehaviorTouchView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Llenovo/design/widget/CoordinatorLayout$LayoutParams;

    .line 429
    .local v13, "lp":Llenovo/design/widget/CoordinatorLayout$LayoutParams;
    invoke-virtual {v13}, Llenovo/design/widget/CoordinatorLayout$LayoutParams;->getBehavior()Llenovo/design/widget/CoordinatorLayout$Behavior;

    move-result-object v9

    .line 430
    .local v9, "b":Llenovo/design/widget/CoordinatorLayout$Behavior;
    if-eqz v9, :cond_1

    .line 431
    iget-object v2, p0, Llenovo/design/widget/CoordinatorLayout;->mBehaviorTouchView:Landroid/view/View;

    invoke-virtual {v9, p0, v2, p1}, Llenovo/design/widget/CoordinatorLayout$Behavior;->onTouchEvent(Llenovo/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v12

    .line 436
    .end local v9    # "b":Llenovo/design/widget/CoordinatorLayout$Behavior;
    .end local v13    # "lp":Llenovo/design/widget/CoordinatorLayout$LayoutParams;
    :cond_1
    iget-object v2, p0, Llenovo/design/widget/CoordinatorLayout;->mBehaviorTouchView:Landroid/view/View;

    if-nez v2, :cond_7

    .line 437
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    or-int/2addr v12, v2

    .line 447
    :cond_2
    :goto_0
    if-nez v12, :cond_3

    if-nez v8, :cond_3

    .line 451
    :cond_3
    if-eqz v10, :cond_4

    .line 452
    invoke-virtual {v10}, Landroid/view/MotionEvent;->recycle()V

    .line 455
    :cond_4
    const/4 v2, 0x1

    if-eq v8, v2, :cond_5

    const/4 v2, 0x3

    if-ne v8, v2, :cond_6

    .line 456
    :cond_5
    invoke-direct {p0}, Llenovo/design/widget/CoordinatorLayout;->resetTouchBehaviors()V

    .line 459
    :cond_6
    return v12

    .line 438
    :cond_7
    if-eqz v11, :cond_2

    .line 439
    if-eqz v10, :cond_8

    .line 440
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 441
    .local v0, "now":J
    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-wide v2, v0

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v10

    .line 444
    .end local v0    # "now":J
    :cond_8
    invoke-super {p0, v10}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_0
.end method

.method recordLastChildRect(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "r"    # Landroid/graphics/Rect;

    .prologue
    .line 781
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Llenovo/design/widget/CoordinatorLayout$LayoutParams;

    .line 782
    .local v0, "lp":Llenovo/design/widget/CoordinatorLayout$LayoutParams;
    invoke-virtual {v0, p2}, Llenovo/design/widget/CoordinatorLayout$LayoutParams;->setLastChildRect(Landroid/graphics/Rect;)V

    .line 783
    return-void
.end method

.method removePreDrawListener()V
    .locals 2

    .prologue
    .line 1283
    iget-boolean v1, p0, Llenovo/design/widget/CoordinatorLayout;->mIsAttachedToWindow:Z

    if-eqz v1, :cond_0

    .line 1284
    iget-object v1, p0, Llenovo/design/widget/CoordinatorLayout;->mOnPreDrawListener:Llenovo/design/widget/CoordinatorLayout$OnPreDrawListener;

    if-eqz v1, :cond_0

    .line 1285
    invoke-virtual {p0}, Llenovo/design/widget/CoordinatorLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 1286
    .local v0, "vto":Landroid/view/ViewTreeObserver;
    iget-object v1, p0, Llenovo/design/widget/CoordinatorLayout;->mOnPreDrawListener:Llenovo/design/widget/CoordinatorLayout$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 1289
    .end local v0    # "vto":Landroid/view/ViewTreeObserver;
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Llenovo/design/widget/CoordinatorLayout;->mNeedsPreDrawListener:Z

    .line 1290
    return-void
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 0
    .param p1, "disallowIntercept"    # Z

    .prologue
    .line 464
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    .line 465
    if-eqz p1, :cond_0

    .line 466
    invoke-direct {p0}, Llenovo/design/widget/CoordinatorLayout;->resetTouchBehaviors()V

    .line 468
    :cond_0
    return-void
.end method

.method public setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V
    .locals 0
    .param p1, "onHierarchyChangeListener"    # Landroid/view/ViewGroup$OnHierarchyChangeListener;

    .prologue
    .line 189
    iput-object p1, p0, Llenovo/design/widget/CoordinatorLayout;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    .line 190
    return-void
.end method

.method public setStatusBarBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "bg"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 232
    iput-object p1, p0, Llenovo/design/widget/CoordinatorLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    .line 233
    invoke-virtual {p0}, Llenovo/design/widget/CoordinatorLayout;->invalidate()V

    .line 234
    return-void
.end method

.method public setStatusBarBackgroundColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 263
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, v0}, Llenovo/design/widget/CoordinatorLayout;->setStatusBarBackground(Landroid/graphics/drawable/Drawable;)V

    .line 264
    return-void
.end method

.method public setStatusBarBackgroundResource(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 252
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Llenovo/design/widget/CoordinatorLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0}, Llenovo/design/widget/CoordinatorLayout;->setStatusBarBackground(Landroid/graphics/drawable/Drawable;)V

    .line 253
    return-void

    .line 252
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
