.class public Llenovo/widget/Toolbar$LayoutParams;
.super Landroid/app/ActionBar$LayoutParams;
.source "Toolbar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llenovo/widget/Toolbar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# static fields
.field static final CUSTOM:I = 0x0

.field static final EXPANDED:I = 0x2

.field static final SYSTEM:I = 0x1


# instance fields
.field mViewType:I


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .param p1, "gravity"    # I

    .prologue
    .line 1810
    const/4 v0, -0x2

    const/4 v1, -0x1

    invoke-direct {p0, v0, v1, p1}, Llenovo/widget/Toolbar$LayoutParams;-><init>(III)V

    .line 1811
    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 1800
    invoke-direct {p0, p1, p2}, Landroid/app/ActionBar$LayoutParams;-><init>(II)V

    .line 1793
    const/4 v0, 0x0

    iput v0, p0, Llenovo/widget/Toolbar$LayoutParams;->mViewType:I

    .line 1801
    const v0, 0x800013

    iput v0, p0, Llenovo/widget/Toolbar$LayoutParams;->gravity:I

    .line 1802
    return-void
.end method

.method public constructor <init>(III)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "gravity"    # I

    .prologue
    .line 1805
    invoke-direct {p0, p1, p2}, Landroid/app/ActionBar$LayoutParams;-><init>(II)V

    .line 1793
    const/4 v0, 0x0

    iput v0, p0, Llenovo/widget/Toolbar$LayoutParams;->mViewType:I

    .line 1806
    iput p3, p0, Llenovo/widget/Toolbar$LayoutParams;->gravity:I

    .line 1807
    return-void
.end method

.method public constructor <init>(Landroid/app/ActionBar$LayoutParams;)V
    .locals 1
    .param p1, "source"    # Landroid/app/ActionBar$LayoutParams;

    .prologue
    .line 1820
    invoke-direct {p0, p1}, Landroid/app/ActionBar$LayoutParams;-><init>(Landroid/app/ActionBar$LayoutParams;)V

    .line 1793
    const/4 v0, 0x0

    iput v0, p0, Llenovo/widget/Toolbar$LayoutParams;->mViewType:I

    .line 1821
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 1796
    invoke-direct {p0, p1, p2}, Landroid/app/ActionBar$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1793
    const/4 v0, 0x0

    iput v0, p0, Llenovo/widget/Toolbar$LayoutParams;->mViewType:I

    .line 1797
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .param p1, "source"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 1831
    invoke-direct {p0, p1}, Landroid/app/ActionBar$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1793
    const/4 v0, 0x0

    iput v0, p0, Llenovo/widget/Toolbar$LayoutParams;->mViewType:I

    .line 1832
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 1
    .param p1, "source"    # Landroid/view/ViewGroup$MarginLayoutParams;

    .prologue
    .line 1824
    invoke-direct {p0, p1}, Landroid/app/ActionBar$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1793
    const/4 v0, 0x0

    iput v0, p0, Llenovo/widget/Toolbar$LayoutParams;->mViewType:I

    .line 1827
    invoke-virtual {p0, p1}, Llenovo/widget/Toolbar$LayoutParams;->copyMarginsFromCompat(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 1828
    return-void
.end method

.method public constructor <init>(Llenovo/widget/Toolbar$LayoutParams;)V
    .locals 1
    .param p1, "source"    # Llenovo/widget/Toolbar$LayoutParams;

    .prologue
    .line 1814
    invoke-direct {p0, p1}, Landroid/app/ActionBar$LayoutParams;-><init>(Landroid/app/ActionBar$LayoutParams;)V

    .line 1793
    const/4 v0, 0x0

    iput v0, p0, Llenovo/widget/Toolbar$LayoutParams;->mViewType:I

    .line 1816
    iget v0, p1, Llenovo/widget/Toolbar$LayoutParams;->mViewType:I

    iput v0, p0, Llenovo/widget/Toolbar$LayoutParams;->mViewType:I

    .line 1817
    return-void
.end method


# virtual methods
.method copyMarginsFromCompat(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 1
    .param p1, "source"    # Landroid/view/ViewGroup$MarginLayoutParams;

    .prologue
    .line 1835
    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iput v0, p0, Llenovo/widget/Toolbar$LayoutParams;->leftMargin:I

    .line 1836
    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iput v0, p0, Llenovo/widget/Toolbar$LayoutParams;->topMargin:I

    .line 1837
    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iput v0, p0, Llenovo/widget/Toolbar$LayoutParams;->rightMargin:I

    .line 1838
    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iput v0, p0, Llenovo/widget/Toolbar$LayoutParams;->bottomMargin:I

    .line 1839
    return-void
.end method