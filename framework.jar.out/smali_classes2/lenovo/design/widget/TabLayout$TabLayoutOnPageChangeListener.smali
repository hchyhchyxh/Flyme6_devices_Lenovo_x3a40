.class public Llenovo/design/widget/TabLayout$TabLayoutOnPageChangeListener;
.super Ljava/lang/Object;
.source "TabLayout.java"

# interfaces
.implements Llenovo/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llenovo/design/widget/TabLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TabLayoutOnPageChangeListener"
.end annotation


# instance fields
.field private mPreviousScrollState:I

.field private mScrollState:I

.field private final mTabLayoutRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Llenovo/design/widget/TabLayout;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Llenovo/design/widget/TabLayout;)V
    .locals 1
    .param p1, "tabLayout"    # Llenovo/design/widget/TabLayout;

    .prologue
    .line 1576
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1577
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Llenovo/design/widget/TabLayout$TabLayoutOnPageChangeListener;->mTabLayoutRef:Ljava/lang/ref/WeakReference;

    .line 1578
    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 1582
    iget v0, p0, Llenovo/design/widget/TabLayout$TabLayoutOnPageChangeListener;->mScrollState:I

    iput v0, p0, Llenovo/design/widget/TabLayout$TabLayoutOnPageChangeListener;->mPreviousScrollState:I

    .line 1583
    iput p1, p0, Llenovo/design/widget/TabLayout$TabLayoutOnPageChangeListener;->mScrollState:I

    .line 1584
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 4
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I

    .prologue
    const/4 v1, 0x1

    .line 1589
    iget-object v2, p0, Llenovo/design/widget/TabLayout$TabLayoutOnPageChangeListener;->mTabLayoutRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llenovo/design/widget/TabLayout;

    .line 1590
    .local v0, "tabLayout":Llenovo/design/widget/TabLayout;
    if-eqz v0, :cond_1

    .line 1593
    iget v2, p0, Llenovo/design/widget/TabLayout$TabLayoutOnPageChangeListener;->mScrollState:I

    if-eq v2, v1, :cond_0

    iget v2, p0, Llenovo/design/widget/TabLayout$TabLayoutOnPageChangeListener;->mScrollState:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    iget v2, p0, Llenovo/design/widget/TabLayout$TabLayoutOnPageChangeListener;->mPreviousScrollState:I

    if-ne v2, v1, :cond_2

    .line 1596
    .local v1, "updateText":Z
    :cond_0
    :goto_0
    invoke-virtual {v0, p1, p2, v1}, Llenovo/design/widget/TabLayout;->setScrollPosition(IFZ)V

    .line 1598
    .end local v1    # "updateText":Z
    :cond_1
    return-void

    .line 1593
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onPageSelected(I)V
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 1602
    iget-object v1, p0, Llenovo/design/widget/TabLayout$TabLayoutOnPageChangeListener;->mTabLayoutRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llenovo/design/widget/TabLayout;

    .line 1603
    .local v0, "tabLayout":Llenovo/design/widget/TabLayout;
    if-eqz v0, :cond_0

    .line 1606
    invoke-virtual {v0, p1}, Llenovo/design/widget/TabLayout;->getTabAt(I)Llenovo/design/widget/TabLayout$Tab;

    move-result-object v2

    iget v1, p0, Llenovo/design/widget/TabLayout$TabLayoutOnPageChangeListener;->mScrollState:I

    if-nez v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v2, v1}, Llenovo/design/widget/TabLayout;->selectTab(Llenovo/design/widget/TabLayout$Tab;Z)V

    .line 1609
    :cond_0
    return-void

    .line 1606
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
