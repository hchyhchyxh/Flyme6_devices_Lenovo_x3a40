.class Llenovo/design/widget/TabLayout$SlidingTabStrip;
.super Landroid/widget/LinearLayout;
.source "TabLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llenovo/design/widget/TabLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SlidingTabStrip"
.end annotation


# instance fields
.field private mIndicatorLeft:I

.field private mIndicatorRight:I

.field private mSelectedIndicatorHeight:I

.field private final mSelectedIndicatorPaint:Landroid/graphics/Paint;

.field private mSelectedPosition:I

.field private mSelectionOffset:F

.field final synthetic this$0:Llenovo/design/widget/TabLayout;


# direct methods
.method constructor <init>(Llenovo/design/widget/TabLayout;Landroid/content/Context;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, -0x1

    .line 1328
    iput-object p1, p0, Llenovo/design/widget/TabLayout$SlidingTabStrip;->this$0:Llenovo/design/widget/TabLayout;

    .line 1329
    invoke-direct {p0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1322
    iput v0, p0, Llenovo/design/widget/TabLayout$SlidingTabStrip;->mSelectedPosition:I

    .line 1325
    iput v0, p0, Llenovo/design/widget/TabLayout$SlidingTabStrip;->mIndicatorLeft:I

    .line 1326
    iput v0, p0, Llenovo/design/widget/TabLayout$SlidingTabStrip;->mIndicatorRight:I

    .line 1330
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Llenovo/design/widget/TabLayout$SlidingTabStrip;->setWillNotDraw(Z)V

    .line 1331
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Llenovo/design/widget/TabLayout$SlidingTabStrip;->mSelectedIndicatorPaint:Landroid/graphics/Paint;

    .line 1332
    return-void
.end method

.method static synthetic access$1600(Llenovo/design/widget/TabLayout$SlidingTabStrip;II)V
    .locals 0
    .param p0, "x0"    # Llenovo/design/widget/TabLayout$SlidingTabStrip;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 1318
    invoke-direct {p0, p1, p2}, Llenovo/design/widget/TabLayout$SlidingTabStrip;->setIndicatorPosition(II)V

    return-void
.end method

.method static synthetic access$1702(Llenovo/design/widget/TabLayout$SlidingTabStrip;I)I
    .locals 0
    .param p0, "x0"    # Llenovo/design/widget/TabLayout$SlidingTabStrip;
    .param p1, "x1"    # I

    .prologue
    .line 1318
    iput p1, p0, Llenovo/design/widget/TabLayout$SlidingTabStrip;->mSelectedPosition:I

    return p1
.end method

.method static synthetic access$1802(Llenovo/design/widget/TabLayout$SlidingTabStrip;F)F
    .locals 0
    .param p0, "x0"    # Llenovo/design/widget/TabLayout$SlidingTabStrip;
    .param p1, "x1"    # F

    .prologue
    .line 1318
    iput p1, p0, Llenovo/design/widget/TabLayout$SlidingTabStrip;->mSelectionOffset:F

    return p1
.end method

.method private setIndicatorPosition(II)V
    .locals 1
    .param p1, "left"    # I
    .param p2, "right"    # I

    .prologue
    .line 1449
    iget v0, p0, Llenovo/design/widget/TabLayout$SlidingTabStrip;->mIndicatorLeft:I

    if-ne p1, v0, :cond_0

    iget v0, p0, Llenovo/design/widget/TabLayout$SlidingTabStrip;->mIndicatorRight:I

    if-eq p2, v0, :cond_1

    .line 1451
    :cond_0
    iput p1, p0, Llenovo/design/widget/TabLayout$SlidingTabStrip;->mIndicatorLeft:I

    .line 1452
    iput p2, p0, Llenovo/design/widget/TabLayout$SlidingTabStrip;->mIndicatorRight:I

    .line 1453
    invoke-virtual {p0}, Llenovo/design/widget/TabLayout$SlidingTabStrip;->postInvalidateOnAnimation()V

    .line 1455
    :cond_1
    return-void
.end method

.method private updateIndicatorPosition()V
    .locals 8

    .prologue
    const/high16 v7, 0x3f800000    # 1.0f

    .line 1426
    iget v4, p0, Llenovo/design/widget/TabLayout$SlidingTabStrip;->mSelectedPosition:I

    invoke-virtual {p0, v4}, Llenovo/design/widget/TabLayout$SlidingTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1429
    .local v3, "selectedTitle":Landroid/view/View;
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v4

    if-lez v4, :cond_1

    .line 1430
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v0

    .line 1431
    .local v0, "left":I
    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v2

    .line 1433
    .local v2, "right":I
    iget v4, p0, Llenovo/design/widget/TabLayout$SlidingTabStrip;->mSelectionOffset:F

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-lez v4, :cond_0

    iget v4, p0, Llenovo/design/widget/TabLayout$SlidingTabStrip;->mSelectedPosition:I

    invoke-virtual {p0}, Llenovo/design/widget/TabLayout$SlidingTabStrip;->getChildCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ge v4, v5, :cond_0

    .line 1435
    iget v4, p0, Llenovo/design/widget/TabLayout$SlidingTabStrip;->mSelectedPosition:I

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {p0, v4}, Llenovo/design/widget/TabLayout$SlidingTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1436
    .local v1, "nextTitle":Landroid/view/View;
    iget v4, p0, Llenovo/design/widget/TabLayout$SlidingTabStrip;->mSelectionOffset:F

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v4, v5

    iget v5, p0, Llenovo/design/widget/TabLayout$SlidingTabStrip;->mSelectionOffset:F

    sub-float v5, v7, v5

    int-to-float v6, v0

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    float-to-int v0, v4

    .line 1438
    iget v4, p0, Llenovo/design/widget/TabLayout$SlidingTabStrip;->mSelectionOffset:F

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v4, v5

    iget v5, p0, Llenovo/design/widget/TabLayout$SlidingTabStrip;->mSelectionOffset:F

    sub-float v5, v7, v5

    int-to-float v6, v2

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    float-to-int v2, v4

    .line 1445
    .end local v1    # "nextTitle":Landroid/view/View;
    :cond_0
    :goto_0
    invoke-direct {p0, v0, v2}, Llenovo/design/widget/TabLayout$SlidingTabStrip;->setIndicatorPosition(II)V

    .line 1446
    return-void

    .line 1442
    .end local v0    # "left":I
    .end local v2    # "right":I
    :cond_1
    const/4 v2, -0x1

    .restart local v2    # "right":I
    move v0, v2

    .restart local v0    # "left":I
    goto :goto_0
.end method


# virtual methods
.method animateIndicatorToPosition(II)V
    .locals 10
    .param p1, "position"    # I
    .param p2, "duration"    # I

    .prologue
    const/4 v0, 0x1

    .line 1458
    invoke-virtual {p0}, Llenovo/design/widget/TabLayout$SlidingTabStrip;->getLayoutDirection()I

    move-result v1

    if-ne v1, v0, :cond_2

    move v7, v0

    .line 1461
    .local v7, "isRtl":Z
    :goto_0
    invoke-virtual {p0, p1}, Llenovo/design/widget/TabLayout$SlidingTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 1462
    .local v9, "targetView":Landroid/view/View;
    invoke-virtual {v9}, Landroid/view/View;->getLeft()I

    move-result v3

    .line 1463
    .local v3, "targetLeft":I
    invoke-virtual {v9}, Landroid/view/View;->getRight()I

    move-result v5

    .line 1467
    .local v5, "targetRight":I
    iget v1, p0, Llenovo/design/widget/TabLayout$SlidingTabStrip;->mSelectedPosition:I

    sub-int v1, p1, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-gt v1, v0, :cond_3

    .line 1469
    iget v2, p0, Llenovo/design/widget/TabLayout$SlidingTabStrip;->mIndicatorLeft:I

    .line 1470
    .local v2, "startLeft":I
    iget v4, p0, Llenovo/design/widget/TabLayout$SlidingTabStrip;->mIndicatorRight:I

    .line 1491
    .local v4, "startRight":I
    :goto_1
    if-ne v2, v3, :cond_0

    if-eq v4, v5, :cond_1

    .line 1492
    :cond_0
    iget-object v0, p0, Llenovo/design/widget/TabLayout$SlidingTabStrip;->this$0:Llenovo/design/widget/TabLayout;

    invoke-static {}, Llenovo/design/widget/ViewUtils;->createAnimator()Llenovo/design/widget/ValueAnimatorCompat;

    move-result-object v1

    # setter for: Llenovo/design/widget/TabLayout;->mIndicatorAnimator:Llenovo/design/widget/ValueAnimatorCompat;
    invoke-static {v0, v1}, Llenovo/design/widget/TabLayout;->access$1502(Llenovo/design/widget/TabLayout;Llenovo/design/widget/ValueAnimatorCompat;)Llenovo/design/widget/ValueAnimatorCompat;

    move-result-object v6

    .line 1493
    .local v6, "animator":Llenovo/design/widget/ValueAnimatorCompat;
    sget-object v0, Llenovo/design/widget/AnimationUtils;->FAST_OUT_SLOW_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v6, v0}, Llenovo/design/widget/ValueAnimatorCompat;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1494
    invoke-virtual {v6, p2}, Llenovo/design/widget/ValueAnimatorCompat;->setDuration(I)V

    .line 1495
    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v6, v0, v1}, Llenovo/design/widget/ValueAnimatorCompat;->setFloatValues(FF)V

    .line 1496
    new-instance v0, Llenovo/design/widget/TabLayout$SlidingTabStrip$1;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Llenovo/design/widget/TabLayout$SlidingTabStrip$1;-><init>(Llenovo/design/widget/TabLayout$SlidingTabStrip;IIII)V

    invoke-virtual {v6, v0}, Llenovo/design/widget/ValueAnimatorCompat;->setUpdateListener(Llenovo/design/widget/ValueAnimatorCompat$AnimatorUpdateListener;)V

    .line 1505
    new-instance v0, Llenovo/design/widget/TabLayout$SlidingTabStrip$2;

    invoke-direct {v0, p0, p1}, Llenovo/design/widget/TabLayout$SlidingTabStrip$2;-><init>(Llenovo/design/widget/TabLayout$SlidingTabStrip;I)V

    invoke-virtual {v6, v0}, Llenovo/design/widget/ValueAnimatorCompat;->setListener(Llenovo/design/widget/ValueAnimatorCompat$AnimatorListener;)V

    .line 1518
    invoke-virtual {v6}, Llenovo/design/widget/ValueAnimatorCompat;->start()V

    .line 1520
    .end local v6    # "animator":Llenovo/design/widget/ValueAnimatorCompat;
    :cond_1
    return-void

    .line 1458
    .end local v2    # "startLeft":I
    .end local v3    # "targetLeft":I
    .end local v4    # "startRight":I
    .end local v5    # "targetRight":I
    .end local v7    # "isRtl":Z
    .end local v9    # "targetView":Landroid/view/View;
    :cond_2
    const/4 v7, 0x0

    goto :goto_0

    .line 1473
    .restart local v3    # "targetLeft":I
    .restart local v5    # "targetRight":I
    .restart local v7    # "isRtl":Z
    .restart local v9    # "targetView":Landroid/view/View;
    :cond_3
    iget-object v0, p0, Llenovo/design/widget/TabLayout$SlidingTabStrip;->this$0:Llenovo/design/widget/TabLayout;

    const/16 v1, 0x18

    # invokes: Llenovo/design/widget/TabLayout;->dpToPx(I)I
    invoke-static {v0, v1}, Llenovo/design/widget/TabLayout;->access$1300(Llenovo/design/widget/TabLayout;I)I

    move-result v8

    .line 1474
    .local v8, "offset":I
    iget v0, p0, Llenovo/design/widget/TabLayout$SlidingTabStrip;->mSelectedPosition:I

    if-ge p1, v0, :cond_5

    .line 1476
    if-eqz v7, :cond_4

    .line 1477
    sub-int v4, v3, v8

    .restart local v4    # "startRight":I
    move v2, v4

    .restart local v2    # "startLeft":I
    goto :goto_1

    .line 1479
    .end local v2    # "startLeft":I
    .end local v4    # "startRight":I
    :cond_4
    add-int v4, v5, v8

    .restart local v4    # "startRight":I
    move v2, v4

    .restart local v2    # "startLeft":I
    goto :goto_1

    .line 1483
    .end local v2    # "startLeft":I
    .end local v4    # "startRight":I
    :cond_5
    if-eqz v7, :cond_6

    .line 1484
    add-int v4, v5, v8

    .restart local v4    # "startRight":I
    move v2, v4

    .restart local v2    # "startLeft":I
    goto :goto_1

    .line 1486
    .end local v2    # "startLeft":I
    .end local v4    # "startRight":I
    :cond_6
    sub-int v4, v3, v8

    .restart local v4    # "startRight":I
    move v2, v4

    .restart local v2    # "startLeft":I
    goto :goto_1
.end method

.method childrenNeedLayout()Z
    .locals 4

    .prologue
    .line 1349
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-virtual {p0}, Llenovo/design/widget/TabLayout$SlidingTabStrip;->getChildCount()I

    move-result v2

    .local v2, "z":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 1350
    invoke-virtual {p0, v1}, Llenovo/design/widget/TabLayout$SlidingTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1351
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v3

    if-gtz v3, :cond_0

    .line 1352
    const/4 v3, 0x1

    .line 1355
    .end local v0    # "child":Landroid/view/View;
    :goto_1
    return v3

    .line 1349
    .restart local v0    # "child":Landroid/view/View;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1355
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 1524
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->draw(Landroid/graphics/Canvas;)V

    .line 1527
    iget v0, p0, Llenovo/design/widget/TabLayout$SlidingTabStrip;->mIndicatorLeft:I

    if-ltz v0, :cond_0

    iget v0, p0, Llenovo/design/widget/TabLayout$SlidingTabStrip;->mIndicatorRight:I

    iget v1, p0, Llenovo/design/widget/TabLayout$SlidingTabStrip;->mIndicatorLeft:I

    if-le v0, v1, :cond_0

    .line 1528
    iget v0, p0, Llenovo/design/widget/TabLayout$SlidingTabStrip;->mIndicatorLeft:I

    int-to-float v1, v0

    invoke-virtual {p0}, Llenovo/design/widget/TabLayout$SlidingTabStrip;->getHeight()I

    move-result v0

    iget v2, p0, Llenovo/design/widget/TabLayout$SlidingTabStrip;->mSelectedIndicatorHeight:I

    sub-int/2addr v0, v2

    int-to-float v2, v0

    iget v0, p0, Llenovo/design/widget/TabLayout$SlidingTabStrip;->mIndicatorRight:I

    int-to-float v3, v0

    invoke-virtual {p0}, Llenovo/design/widget/TabLayout$SlidingTabStrip;->getHeight()I

    move-result v0

    int-to-float v4, v0

    iget-object v5, p0, Llenovo/design/widget/TabLayout$SlidingTabStrip;->mSelectedIndicatorPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 1531
    :cond_0
    return-void
.end method

.method getIndicatorPosition()F
    .locals 2

    .prologue
    .line 1365
    iget v0, p0, Llenovo/design/widget/TabLayout$SlidingTabStrip;->mSelectedPosition:I

    int-to-float v0, v0

    iget v1, p0, Llenovo/design/widget/TabLayout$SlidingTabStrip;->mSelectionOffset:F

    add-float/2addr v0, v1

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 0
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 1420
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 1422
    invoke-direct {p0}, Llenovo/design/widget/TabLayout$SlidingTabStrip;->updateIndicatorPosition()V

    .line 1423
    return-void
.end method

.method protected onMeasure(II)V
    .locals 12
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 1370
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 1372
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v8

    const/high16 v9, 0x40000000    # 2.0f

    if-eq v8, v9, :cond_1

    .line 1416
    :cond_0
    :goto_0
    return-void

    .line 1378
    :cond_1
    iget-object v8, p0, Llenovo/design/widget/TabLayout$SlidingTabStrip;->this$0:Llenovo/design/widget/TabLayout;

    # getter for: Llenovo/design/widget/TabLayout;->mMode:I
    invoke-static {v8}, Llenovo/design/widget/TabLayout;->access$1100(Llenovo/design/widget/TabLayout;)I

    move-result v8

    if-ne v8, v10, :cond_0

    iget-object v8, p0, Llenovo/design/widget/TabLayout$SlidingTabStrip;->this$0:Llenovo/design/widget/TabLayout;

    # getter for: Llenovo/design/widget/TabLayout;->mTabGravity:I
    invoke-static {v8}, Llenovo/design/widget/TabLayout;->access$1200(Llenovo/design/widget/TabLayout;)I

    move-result v8

    if-ne v8, v10, :cond_0

    .line 1379
    invoke-virtual {p0}, Llenovo/design/widget/TabLayout$SlidingTabStrip;->getChildCount()I

    move-result v1

    .line 1381
    .local v1, "count":I
    invoke-static {v11, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 1384
    .local v6, "unspecifiedSpec":I
    const/4 v4, 0x0

    .line 1385
    .local v4, "largestTabWidth":I
    const/4 v3, 0x0

    .local v3, "i":I
    move v7, v1

    .local v7, "z":I
    :goto_1
    if-ge v3, v7, :cond_2

    .line 1386
    invoke-virtual {p0, v3}, Llenovo/design/widget/TabLayout$SlidingTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1387
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0, v6, p2}, Landroid/view/View;->measure(II)V

    .line 1388
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    invoke-static {v4, v8}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 1385
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1391
    .end local v0    # "child":Landroid/view/View;
    :cond_2
    if-lez v4, :cond_0

    .line 1396
    iget-object v8, p0, Llenovo/design/widget/TabLayout$SlidingTabStrip;->this$0:Llenovo/design/widget/TabLayout;

    const/16 v9, 0x10

    # invokes: Llenovo/design/widget/TabLayout;->dpToPx(I)I
    invoke-static {v8, v9}, Llenovo/design/widget/TabLayout;->access$1300(Llenovo/design/widget/TabLayout;I)I

    move-result v2

    .line 1397
    .local v2, "gutter":I
    mul-int v8, v4, v1

    invoke-virtual {p0}, Llenovo/design/widget/TabLayout$SlidingTabStrip;->getMeasuredWidth()I

    move-result v9

    mul-int/lit8 v10, v2, 0x2

    sub-int/2addr v9, v10

    if-gt v8, v9, :cond_3

    .line 1400
    const/4 v3, 0x0

    :goto_2
    if-ge v3, v1, :cond_4

    .line 1401
    invoke-virtual {p0, v3}, Llenovo/design/widget/TabLayout$SlidingTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1402
    .restart local v0    # "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout$LayoutParams;

    .line 1403
    .local v5, "lp":Landroid/widget/LinearLayout$LayoutParams;
    iput v4, v5, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 1404
    const/4 v8, 0x0

    iput v8, v5, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 1400
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1409
    .end local v0    # "child":Landroid/view/View;
    .end local v5    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_3
    iget-object v8, p0, Llenovo/design/widget/TabLayout$SlidingTabStrip;->this$0:Llenovo/design/widget/TabLayout;

    # setter for: Llenovo/design/widget/TabLayout;->mTabGravity:I
    invoke-static {v8, v11}, Llenovo/design/widget/TabLayout;->access$1202(Llenovo/design/widget/TabLayout;I)I

    .line 1410
    iget-object v8, p0, Llenovo/design/widget/TabLayout$SlidingTabStrip;->this$0:Llenovo/design/widget/TabLayout;

    # invokes: Llenovo/design/widget/TabLayout;->updateTabViewsLayoutParams()V
    invoke-static {v8}, Llenovo/design/widget/TabLayout;->access$1400(Llenovo/design/widget/TabLayout;)V

    .line 1414
    :cond_4
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    goto :goto_0
.end method

.method setIndicatorPositionFromTabPosition(IF)V
    .locals 0
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F

    .prologue
    .line 1359
    iput p1, p0, Llenovo/design/widget/TabLayout$SlidingTabStrip;->mSelectedPosition:I

    .line 1360
    iput p2, p0, Llenovo/design/widget/TabLayout$SlidingTabStrip;->mSelectionOffset:F

    .line 1361
    invoke-direct {p0}, Llenovo/design/widget/TabLayout$SlidingTabStrip;->updateIndicatorPosition()V

    .line 1362
    return-void
.end method

.method setSelectedIndicatorColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 1335
    iget-object v0, p0, Llenovo/design/widget/TabLayout$SlidingTabStrip;->mSelectedIndicatorPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 1336
    iget-object v0, p0, Llenovo/design/widget/TabLayout$SlidingTabStrip;->mSelectedIndicatorPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1337
    invoke-virtual {p0}, Llenovo/design/widget/TabLayout$SlidingTabStrip;->postInvalidateOnAnimation()V

    .line 1339
    :cond_0
    return-void
.end method

.method setSelectedIndicatorHeight(I)V
    .locals 1
    .param p1, "height"    # I

    .prologue
    .line 1342
    iget v0, p0, Llenovo/design/widget/TabLayout$SlidingTabStrip;->mSelectedIndicatorHeight:I

    if-eq v0, p1, :cond_0

    .line 1343
    iput p1, p0, Llenovo/design/widget/TabLayout$SlidingTabStrip;->mSelectedIndicatorHeight:I

    .line 1344
    invoke-virtual {p0}, Llenovo/design/widget/TabLayout$SlidingTabStrip;->postInvalidateOnAnimation()V

    .line 1346
    :cond_0
    return-void
.end method
