.class Llenovo/design/widget/ViewGroupUtils$ViewGroupUtilsImplHoneycomb;
.super Ljava/lang/Object;
.source "ViewGroupUtils.java"

# interfaces
.implements Llenovo/design/widget/ViewGroupUtils$ViewGroupUtilsImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llenovo/design/widget/ViewGroupUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ViewGroupUtilsImplHoneycomb"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Llenovo/design/widget/ViewGroupUtils$1;)V
    .locals 0
    .param p1, "x0"    # Llenovo/design/widget/ViewGroupUtils$1;

    .prologue
    .line 37
    invoke-direct {p0}, Llenovo/design/widget/ViewGroupUtils$ViewGroupUtilsImplHoneycomb;-><init>()V

    return-void
.end method


# virtual methods
.method public offsetDescendantRect(Landroid/view/ViewGroup;Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 0
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 40
    invoke-static {p1, p2, p3}, Llenovo/design/widget/ViewGroupUtilsHoneycomb;->offsetDescendantRect(Landroid/view/ViewGroup;Landroid/view/View;Landroid/graphics/Rect;)V

    .line 41
    return-void
.end method
