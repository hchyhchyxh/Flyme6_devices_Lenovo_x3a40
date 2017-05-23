.class public Llenovo/design/widget/CoordinatorLayout$LayoutParams;
.super Landroid/view/ViewGroup$MarginLayoutParams;
.source "CoordinatorLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llenovo/design/widget/CoordinatorLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# instance fields
.field public anchorGravity:I

.field public gravity:I

.field public keyline:I

.field mAnchorDirectChild:Landroid/view/View;

.field mAnchorId:I

.field mAnchorView:Landroid/view/View;

.field mBehavior:Llenovo/design/widget/CoordinatorLayout$Behavior;

.field mBehaviorResolved:Z

.field mBehaviorTag:Ljava/lang/Object;

.field private mDidAcceptNestedScroll:Z

.field private mDidBlockInteraction:Z

.field private mDidChangeAfterNestedScroll:Z

.field final mLastChildRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(II)V
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 2198
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 2158
    iput-boolean v0, p0, Llenovo/design/widget/CoordinatorLayout$LayoutParams;->mBehaviorResolved:Z

    .line 2165
    iput v0, p0, Llenovo/design/widget/CoordinatorLayout$LayoutParams;->gravity:I

    .line 2171
    iput v0, p0, Llenovo/design/widget/CoordinatorLayout$LayoutParams;->anchorGravity:I

    .line 2178
    iput v1, p0, Llenovo/design/widget/CoordinatorLayout$LayoutParams;->keyline:I

    .line 2184
    iput v1, p0, Llenovo/design/widget/CoordinatorLayout$LayoutParams;->mAnchorId:I

    .line 2193
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Llenovo/design/widget/CoordinatorLayout$LayoutParams;->mLastChildRect:Landroid/graphics/Rect;

    .line 2199
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 2202
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2158
    iput-boolean v2, p0, Llenovo/design/widget/CoordinatorLayout$LayoutParams;->mBehaviorResolved:Z

    .line 2165
    iput v2, p0, Llenovo/design/widget/CoordinatorLayout$LayoutParams;->gravity:I

    .line 2171
    iput v2, p0, Llenovo/design/widget/CoordinatorLayout$LayoutParams;->anchorGravity:I

    .line 2178
    iput v3, p0, Llenovo/design/widget/CoordinatorLayout$LayoutParams;->keyline:I

    .line 2184
    iput v3, p0, Llenovo/design/widget/CoordinatorLayout$LayoutParams;->mAnchorId:I

    .line 2193
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Llenovo/design/widget/CoordinatorLayout$LayoutParams;->mLastChildRect:Landroid/graphics/Rect;

    .line 2204
    sget-object v1, Lcom/lenovo/internal/R$styleable;->CoordinatorLayout_LayoutParams:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 2207
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Llenovo/design/widget/CoordinatorLayout$LayoutParams;->gravity:I

    .line 2210
    const/4 v1, 0x2

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Llenovo/design/widget/CoordinatorLayout$LayoutParams;->mAnchorId:I

    .line 2212
    const/4 v1, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Llenovo/design/widget/CoordinatorLayout$LayoutParams;->anchorGravity:I

    .line 2216
    const/4 v1, 0x3

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Llenovo/design/widget/CoordinatorLayout$LayoutParams;->keyline:I

    .line 2219
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    iput-boolean v1, p0, Llenovo/design/widget/CoordinatorLayout$LayoutParams;->mBehaviorResolved:Z

    .line 2221
    iget-boolean v1, p0, Llenovo/design/widget/CoordinatorLayout$LayoutParams;->mBehaviorResolved:Z

    if-eqz v1, :cond_0

    .line 2222
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, p2, v1}, Llenovo/design/widget/CoordinatorLayout;->parseBehavior(Landroid/content/Context;Landroid/util/AttributeSet;Ljava/lang/String;)Llenovo/design/widget/CoordinatorLayout$Behavior;

    move-result-object v1

    iput-object v1, p0, Llenovo/design/widget/CoordinatorLayout$LayoutParams;->mBehavior:Llenovo/design/widget/CoordinatorLayout$Behavior;

    .line 2226
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 2227
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 2238
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2158
    iput-boolean v0, p0, Llenovo/design/widget/CoordinatorLayout$LayoutParams;->mBehaviorResolved:Z

    .line 2165
    iput v0, p0, Llenovo/design/widget/CoordinatorLayout$LayoutParams;->gravity:I

    .line 2171
    iput v0, p0, Llenovo/design/widget/CoordinatorLayout$LayoutParams;->anchorGravity:I

    .line 2178
    iput v1, p0, Llenovo/design/widget/CoordinatorLayout$LayoutParams;->keyline:I

    .line 2184
    iput v1, p0, Llenovo/design/widget/CoordinatorLayout$LayoutParams;->mAnchorId:I

    .line 2193
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Llenovo/design/widget/CoordinatorLayout$LayoutParams;->mLastChildRect:Landroid/graphics/Rect;

    .line 2239
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 2
    .param p1, "p"    # Landroid/view/ViewGroup$MarginLayoutParams;

    .prologue
    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 2234
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 2158
    iput-boolean v0, p0, Llenovo/design/widget/CoordinatorLayout$LayoutParams;->mBehaviorResolved:Z

    .line 2165
    iput v0, p0, Llenovo/design/widget/CoordinatorLayout$LayoutParams;->gravity:I

    .line 2171
    iput v0, p0, Llenovo/design/widget/CoordinatorLayout$LayoutParams;->anchorGravity:I

    .line 2178
    iput v1, p0, Llenovo/design/widget/CoordinatorLayout$LayoutParams;->keyline:I

    .line 2184
    iput v1, p0, Llenovo/design/widget/CoordinatorLayout$LayoutParams;->mAnchorId:I

    .line 2193
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Llenovo/design/widget/CoordinatorLayout$LayoutParams;->mLastChildRect:Landroid/graphics/Rect;

    .line 2235
    return-void
.end method

.method public constructor <init>(Llenovo/design/widget/CoordinatorLayout$LayoutParams;)V
    .locals 2
    .param p1, "p"    # Llenovo/design/widget/CoordinatorLayout$LayoutParams;

    .prologue
    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 2230
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 2158
    iput-boolean v0, p0, Llenovo/design/widget/CoordinatorLayout$LayoutParams;->mBehaviorResolved:Z

    .line 2165
    iput v0, p0, Llenovo/design/widget/CoordinatorLayout$LayoutParams;->gravity:I

    .line 2171
    iput v0, p0, Llenovo/design/widget/CoordinatorLayout$LayoutParams;->anchorGravity:I

    .line 2178
    iput v1, p0, Llenovo/design/widget/CoordinatorLayout$LayoutParams;->keyline:I

    .line 2184
    iput v1, p0, Llenovo/design/widget/CoordinatorLayout$LayoutParams;->mAnchorId:I

    .line 2193
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Llenovo/design/widget/CoordinatorLayout$LayoutParams;->mLastChildRect:Landroid/graphics/Rect;

    .line 2231
    return-void
.end method

.method private resolveAnchorView(Landroid/view/View;Llenovo/design/widget/CoordinatorLayout;)V
    .locals 6
    .param p1, "forChild"    # Landroid/view/View;
    .param p2, "parent"    # Llenovo/design/widget/CoordinatorLayout;

    .prologue
    const/4 v3, 0x0

    .line 2453
    iget v2, p0, Llenovo/design/widget/CoordinatorLayout$LayoutParams;->mAnchorId:I

    invoke-virtual {p2, v2}, Llenovo/design/widget/CoordinatorLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Llenovo/design/widget/CoordinatorLayout$LayoutParams;->mAnchorView:Landroid/view/View;

    .line 2454
    iget-object v2, p0, Llenovo/design/widget/CoordinatorLayout$LayoutParams;->mAnchorView:Landroid/view/View;

    if-eqz v2, :cond_4

    .line 2455
    iget-object v0, p0, Llenovo/design/widget/CoordinatorLayout$LayoutParams;->mAnchorView:Landroid/view/View;

    .line 2456
    .local v0, "directChild":Landroid/view/View;
    iget-object v2, p0, Llenovo/design/widget/CoordinatorLayout$LayoutParams;->mAnchorView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 2457
    .local v1, "p":Landroid/view/ViewParent;
    :goto_0
    if-eq v1, p2, :cond_3

    if-eqz v1, :cond_3

    .line 2459
    if-ne v1, p1, :cond_1

    .line 2460
    invoke-virtual {p2}, Llenovo/design/widget/CoordinatorLayout;->isInEditMode()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2461
    iput-object v3, p0, Llenovo/design/widget/CoordinatorLayout$LayoutParams;->mAnchorDirectChild:Landroid/view/View;

    iput-object v3, p0, Llenovo/design/widget/CoordinatorLayout$LayoutParams;->mAnchorView:Landroid/view/View;

    .line 2481
    .end local v0    # "directChild":Landroid/view/View;
    .end local v1    # "p":Landroid/view/ViewParent;
    :goto_1
    return-void

    .line 2464
    .restart local v0    # "directChild":Landroid/view/View;
    .restart local v1    # "p":Landroid/view/ViewParent;
    :cond_0
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Anchor must not be a descendant of the anchored view"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2467
    :cond_1
    instance-of v2, v1, Landroid/view/View;

    if-eqz v2, :cond_2

    move-object v0, v1

    .line 2468
    check-cast v0, Landroid/view/View;

    .line 2458
    :cond_2
    invoke-interface {v1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    goto :goto_0

    .line 2471
    :cond_3
    iput-object v0, p0, Llenovo/design/widget/CoordinatorLayout$LayoutParams;->mAnchorDirectChild:Landroid/view/View;

    goto :goto_1

    .line 2473
    .end local v0    # "directChild":Landroid/view/View;
    .end local v1    # "p":Landroid/view/ViewParent;
    :cond_4
    invoke-virtual {p2}, Llenovo/design/widget/CoordinatorLayout;->isInEditMode()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 2474
    iput-object v3, p0, Llenovo/design/widget/CoordinatorLayout$LayoutParams;->mAnchorDirectChild:Landroid/view/View;

    iput-object v3, p0, Llenovo/design/widget/CoordinatorLayout$LayoutParams;->mAnchorView:Landroid/view/View;

    goto :goto_1

    .line 2477
    :cond_5
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not find CoordinatorLayout descendant view with id "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Llenovo/design/widget/CoordinatorLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget v5, p0, Llenovo/design/widget/CoordinatorLayout$LayoutParams;->mAnchorId:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to anchor view "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private verifyAnchorView(Landroid/view/View;Llenovo/design/widget/CoordinatorLayout;)Z
    .locals 5
    .param p1, "forChild"    # Landroid/view/View;
    .param p2, "parent"    # Llenovo/design/widget/CoordinatorLayout;

    .prologue
    const/4 v2, 0x0

    .line 2489
    iget-object v3, p0, Llenovo/design/widget/CoordinatorLayout$LayoutParams;->mAnchorView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v3

    iget v4, p0, Llenovo/design/widget/CoordinatorLayout$LayoutParams;->mAnchorId:I

    if-eq v3, v4, :cond_0

    .line 2506
    :goto_0
    return v2

    .line 2493
    :cond_0
    iget-object v0, p0, Llenovo/design/widget/CoordinatorLayout$LayoutParams;->mAnchorView:Landroid/view/View;

    .line 2494
    .local v0, "directChild":Landroid/view/View;
    iget-object v3, p0, Llenovo/design/widget/CoordinatorLayout$LayoutParams;->mAnchorView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 2495
    .local v1, "p":Landroid/view/ViewParent;
    :goto_1
    if-eq v1, p2, :cond_4

    .line 2497
    if-eqz v1, :cond_1

    if-ne v1, p1, :cond_2

    .line 2498
    :cond_1
    const/4 v3, 0x0

    iput-object v3, p0, Llenovo/design/widget/CoordinatorLayout$LayoutParams;->mAnchorDirectChild:Landroid/view/View;

    iput-object v3, p0, Llenovo/design/widget/CoordinatorLayout$LayoutParams;->mAnchorView:Landroid/view/View;

    goto :goto_0

    .line 2501
    :cond_2
    instance-of v3, v1, Landroid/view/View;

    if-eqz v3, :cond_3

    move-object v0, v1

    .line 2502
    check-cast v0, Landroid/view/View;

    .line 2496
    :cond_3
    invoke-interface {v1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    goto :goto_1

    .line 2505
    :cond_4
    iput-object v0, p0, Llenovo/design/widget/CoordinatorLayout$LayoutParams;->mAnchorDirectChild:Landroid/view/View;

    .line 2506
    const/4 v2, 0x1

    goto :goto_0
.end method


# virtual methods
.method acceptNestedScroll(Z)V
    .locals 0
    .param p1, "accept"    # Z

    .prologue
    .line 2371
    iput-boolean p1, p0, Llenovo/design/widget/CoordinatorLayout$LayoutParams;->mDidAcceptNestedScroll:Z

    .line 2372
    return-void
.end method

.method checkAnchorChanged()Z
    .locals 2

    .prologue
    .line 2317
    iget-object v0, p0, Llenovo/design/widget/CoordinatorLayout$LayoutParams;->mAnchorView:Landroid/view/View;

    if-nez v0, :cond_0

    iget v0, p0, Llenovo/design/widget/CoordinatorLayout$LayoutParams;->mAnchorId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method dependsOn(Llenovo/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z
    .locals 1
    .param p1, "parent"    # Llenovo/design/widget/CoordinatorLayout;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "dependency"    # Landroid/view/View;

    .prologue
    .line 2399
    iget-object v0, p0, Llenovo/design/widget/CoordinatorLayout$LayoutParams;->mAnchorDirectChild:Landroid/view/View;

    if-eq p3, v0, :cond_0

    iget-object v0, p0, Llenovo/design/widget/CoordinatorLayout$LayoutParams;->mBehavior:Llenovo/design/widget/CoordinatorLayout$Behavior;

    if-eqz v0, :cond_1

    iget-object v0, p0, Llenovo/design/widget/CoordinatorLayout$LayoutParams;->mBehavior:Llenovo/design/widget/CoordinatorLayout$Behavior;

    invoke-virtual {v0, p1, p2, p3}, Llenovo/design/widget/CoordinatorLayout$Behavior;->layoutDependsOn(Llenovo/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method didBlockInteraction()Z
    .locals 1

    .prologue
    .line 2328
    iget-object v0, p0, Llenovo/design/widget/CoordinatorLayout$LayoutParams;->mBehavior:Llenovo/design/widget/CoordinatorLayout$Behavior;

    if-nez v0, :cond_0

    .line 2329
    const/4 v0, 0x0

    iput-boolean v0, p0, Llenovo/design/widget/CoordinatorLayout$LayoutParams;->mDidBlockInteraction:Z

    .line 2331
    :cond_0
    iget-boolean v0, p0, Llenovo/design/widget/CoordinatorLayout$LayoutParams;->mDidBlockInteraction:Z

    return v0
.end method

.method findAnchorView(Llenovo/design/widget/CoordinatorLayout;Landroid/view/View;)Landroid/view/View;
    .locals 3
    .param p1, "parent"    # Llenovo/design/widget/CoordinatorLayout;
    .param p2, "forChild"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x0

    .line 2423
    iget v1, p0, Llenovo/design/widget/CoordinatorLayout$LayoutParams;->mAnchorId:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 2424
    iput-object v0, p0, Llenovo/design/widget/CoordinatorLayout$LayoutParams;->mAnchorDirectChild:Landroid/view/View;

    iput-object v0, p0, Llenovo/design/widget/CoordinatorLayout$LayoutParams;->mAnchorView:Landroid/view/View;

    .line 2431
    :goto_0
    return-object v0

    .line 2428
    :cond_0
    iget-object v0, p0, Llenovo/design/widget/CoordinatorLayout$LayoutParams;->mAnchorView:Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-direct {p0, p2, p1}, Llenovo/design/widget/CoordinatorLayout$LayoutParams;->verifyAnchorView(Landroid/view/View;Llenovo/design/widget/CoordinatorLayout;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2429
    :cond_1
    invoke-direct {p0, p2, p1}, Llenovo/design/widget/CoordinatorLayout$LayoutParams;->resolveAnchorView(Landroid/view/View;Llenovo/design/widget/CoordinatorLayout;)V

    .line 2431
    :cond_2
    iget-object v0, p0, Llenovo/design/widget/CoordinatorLayout$LayoutParams;->mAnchorView:Landroid/view/View;

    goto :goto_0
.end method

.method public getAnchorId()I
    .locals 1

    .prologue
    .line 2251
    iget v0, p0, Llenovo/design/widget/CoordinatorLayout$LayoutParams;->mAnchorId:I

    return v0
.end method

.method public getBehavior()Llenovo/design/widget/CoordinatorLayout$Behavior;
    .locals 1

    .prologue
    .line 2276
    iget-object v0, p0, Llenovo/design/widget/CoordinatorLayout$LayoutParams;->mBehavior:Llenovo/design/widget/CoordinatorLayout$Behavior;

    return-object v0
.end method

.method getChangedAfterNestedScroll()Z
    .locals 1

    .prologue
    .line 2379
    iget-boolean v0, p0, Llenovo/design/widget/CoordinatorLayout$LayoutParams;->mDidChangeAfterNestedScroll:Z

    return v0
.end method

.method getLastChildRect()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 2309
    iget-object v0, p0, Llenovo/design/widget/CoordinatorLayout$LayoutParams;->mLastChildRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method invalidateAnchor()V
    .locals 1

    .prologue
    .line 2410
    const/4 v0, 0x0

    iput-object v0, p0, Llenovo/design/widget/CoordinatorLayout$LayoutParams;->mAnchorDirectChild:Landroid/view/View;

    iput-object v0, p0, Llenovo/design/widget/CoordinatorLayout$LayoutParams;->mAnchorView:Landroid/view/View;

    .line 2411
    return-void
.end method

.method isBlockingInteractionBelow(Llenovo/design/widget/CoordinatorLayout;Landroid/view/View;)Z
    .locals 2
    .param p1, "parent"    # Llenovo/design/widget/CoordinatorLayout;
    .param p2, "child"    # Landroid/view/View;

    .prologue
    .line 2346
    iget-boolean v0, p0, Llenovo/design/widget/CoordinatorLayout$LayoutParams;->mDidBlockInteraction:Z

    if-eqz v0, :cond_0

    .line 2347
    const/4 v0, 0x1

    .line 2350
    :goto_0
    return v0

    :cond_0
    iget-boolean v1, p0, Llenovo/design/widget/CoordinatorLayout$LayoutParams;->mDidBlockInteraction:Z

    iget-object v0, p0, Llenovo/design/widget/CoordinatorLayout$LayoutParams;->mBehavior:Llenovo/design/widget/CoordinatorLayout$Behavior;

    if-eqz v0, :cond_1

    iget-object v0, p0, Llenovo/design/widget/CoordinatorLayout$LayoutParams;->mBehavior:Llenovo/design/widget/CoordinatorLayout$Behavior;

    invoke-virtual {v0, p1, p2}, Llenovo/design/widget/CoordinatorLayout$Behavior;->blocksInteractionBelow(Llenovo/design/widget/CoordinatorLayout;Landroid/view/View;)Z

    move-result v0

    :goto_1
    or-int/2addr v0, v1

    iput-boolean v0, p0, Llenovo/design/widget/CoordinatorLayout$LayoutParams;->mDidBlockInteraction:Z

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method isDirty(Llenovo/design/widget/CoordinatorLayout;Landroid/view/View;)Z
    .locals 1
    .param p1, "parent"    # Llenovo/design/widget/CoordinatorLayout;
    .param p2, "child"    # Landroid/view/View;

    .prologue
    .line 2445
    iget-object v0, p0, Llenovo/design/widget/CoordinatorLayout$LayoutParams;->mBehavior:Llenovo/design/widget/CoordinatorLayout$Behavior;

    if-eqz v0, :cond_0

    iget-object v0, p0, Llenovo/design/widget/CoordinatorLayout$LayoutParams;->mBehavior:Llenovo/design/widget/CoordinatorLayout$Behavior;

    invoke-virtual {v0, p1, p2}, Llenovo/design/widget/CoordinatorLayout$Behavior;->isDirty(Llenovo/design/widget/CoordinatorLayout;Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isNestedScrollAccepted()Z
    .locals 1

    .prologue
    .line 2375
    iget-boolean v0, p0, Llenovo/design/widget/CoordinatorLayout$LayoutParams;->mDidAcceptNestedScroll:Z

    return v0
.end method

.method resetChangedAfterNestedScroll()V
    .locals 1

    .prologue
    .line 2387
    const/4 v0, 0x0

    iput-boolean v0, p0, Llenovo/design/widget/CoordinatorLayout$LayoutParams;->mDidChangeAfterNestedScroll:Z

    .line 2388
    return-void
.end method

.method resetNestedScroll()V
    .locals 1

    .prologue
    .line 2367
    const/4 v0, 0x0

    iput-boolean v0, p0, Llenovo/design/widget/CoordinatorLayout$LayoutParams;->mDidAcceptNestedScroll:Z

    .line 2368
    return-void
.end method

.method resetTouchBehaviorTracking()V
    .locals 1

    .prologue
    .line 2363
    const/4 v0, 0x0

    iput-boolean v0, p0, Llenovo/design/widget/CoordinatorLayout$LayoutParams;->mDidBlockInteraction:Z

    .line 2364
    return-void
.end method

.method public setAnchorId(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 2265
    invoke-virtual {p0}, Llenovo/design/widget/CoordinatorLayout$LayoutParams;->invalidateAnchor()V

    .line 2266
    iput p1, p0, Llenovo/design/widget/CoordinatorLayout$LayoutParams;->mAnchorId:I

    .line 2267
    return-void
.end method

.method public setBehavior(Llenovo/design/widget/CoordinatorLayout$Behavior;)V
    .locals 1
    .param p1, "behavior"    # Llenovo/design/widget/CoordinatorLayout$Behavior;

    .prologue
    .line 2289
    iget-object v0, p0, Llenovo/design/widget/CoordinatorLayout$LayoutParams;->mBehavior:Llenovo/design/widget/CoordinatorLayout$Behavior;

    if-eq v0, p1, :cond_0

    .line 2290
    iput-object p1, p0, Llenovo/design/widget/CoordinatorLayout$LayoutParams;->mBehavior:Llenovo/design/widget/CoordinatorLayout$Behavior;

    .line 2291
    const/4 v0, 0x0

    iput-object v0, p0, Llenovo/design/widget/CoordinatorLayout$LayoutParams;->mBehaviorTag:Ljava/lang/Object;

    .line 2292
    const/4 v0, 0x1

    iput-boolean v0, p0, Llenovo/design/widget/CoordinatorLayout$LayoutParams;->mBehaviorResolved:Z

    .line 2294
    :cond_0
    return-void
.end method

.method setChangedAfterNestedScroll(Z)V
    .locals 0
    .param p1, "changed"    # Z

    .prologue
    .line 2383
    iput-boolean p1, p0, Llenovo/design/widget/CoordinatorLayout$LayoutParams;->mDidChangeAfterNestedScroll:Z

    .line 2384
    return-void
.end method

.method setLastChildRect(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "r"    # Landroid/graphics/Rect;

    .prologue
    .line 2301
    iget-object v0, p0, Llenovo/design/widget/CoordinatorLayout$LayoutParams;->mLastChildRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2302
    return-void
.end method
