.class public Llenovo/design/widget/TabLayout$ViewPagerOnTabSelectedListener;
.super Ljava/lang/Object;
.source "TabLayout.java"

# interfaces
.implements Llenovo/design/widget/TabLayout$OnTabSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llenovo/design/widget/TabLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewPagerOnTabSelectedListener"
.end annotation


# instance fields
.field private final mViewPager:Llenovo/view/ViewPager;


# direct methods
.method public constructor <init>(Llenovo/view/ViewPager;)V
    .locals 0
    .param p1, "viewPager"    # Llenovo/view/ViewPager;

    .prologue
    .line 1619
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1620
    iput-object p1, p0, Llenovo/design/widget/TabLayout$ViewPagerOnTabSelectedListener;->mViewPager:Llenovo/view/ViewPager;

    .line 1621
    return-void
.end method


# virtual methods
.method public onTabReselected(Llenovo/design/widget/TabLayout$Tab;)V
    .locals 0
    .param p1, "tab"    # Llenovo/design/widget/TabLayout$Tab;

    .prologue
    .line 1636
    return-void
.end method

.method public onTabSelected(Llenovo/design/widget/TabLayout$Tab;)V
    .locals 2
    .param p1, "tab"    # Llenovo/design/widget/TabLayout$Tab;

    .prologue
    .line 1625
    iget-object v0, p0, Llenovo/design/widget/TabLayout$ViewPagerOnTabSelectedListener;->mViewPager:Llenovo/view/ViewPager;

    invoke-virtual {p1}, Llenovo/design/widget/TabLayout$Tab;->getPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Llenovo/view/ViewPager;->setCurrentItem(I)V

    .line 1626
    return-void
.end method

.method public onTabUnselected(Llenovo/design/widget/TabLayout$Tab;)V
    .locals 0
    .param p1, "tab"    # Llenovo/design/widget/TabLayout$Tab;

    .prologue
    .line 1631
    return-void
.end method
