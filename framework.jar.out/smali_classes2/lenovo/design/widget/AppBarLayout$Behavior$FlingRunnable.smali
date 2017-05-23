.class Llenovo/design/widget/AppBarLayout$Behavior$FlingRunnable;
.super Ljava/lang/Object;
.source "AppBarLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llenovo/design/widget/AppBarLayout$Behavior;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FlingRunnable"
.end annotation


# instance fields
.field private final mLayout:Llenovo/design/widget/AppBarLayout;

.field private final mParent:Llenovo/design/widget/CoordinatorLayout;

.field final synthetic this$0:Llenovo/design/widget/AppBarLayout$Behavior;


# direct methods
.method constructor <init>(Llenovo/design/widget/AppBarLayout$Behavior;Llenovo/design/widget/CoordinatorLayout;Llenovo/design/widget/AppBarLayout;)V
    .locals 0
    .param p2, "parent"    # Llenovo/design/widget/CoordinatorLayout;
    .param p3, "layout"    # Llenovo/design/widget/AppBarLayout;

    .prologue
    .line 921
    iput-object p1, p0, Llenovo/design/widget/AppBarLayout$Behavior$FlingRunnable;->this$0:Llenovo/design/widget/AppBarLayout$Behavior;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 922
    iput-object p2, p0, Llenovo/design/widget/AppBarLayout$Behavior$FlingRunnable;->mParent:Llenovo/design/widget/CoordinatorLayout;

    .line 923
    iput-object p3, p0, Llenovo/design/widget/AppBarLayout$Behavior$FlingRunnable;->mLayout:Llenovo/design/widget/AppBarLayout;

    .line 924
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 928
    iget-object v0, p0, Llenovo/design/widget/AppBarLayout$Behavior$FlingRunnable;->mLayout:Llenovo/design/widget/AppBarLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Llenovo/design/widget/AppBarLayout$Behavior$FlingRunnable;->this$0:Llenovo/design/widget/AppBarLayout$Behavior;

    # getter for: Llenovo/design/widget/AppBarLayout$Behavior;->mScroller:Landroid/widget/Scroller;
    invoke-static {v0}, Llenovo/design/widget/AppBarLayout$Behavior;->access$100(Llenovo/design/widget/AppBarLayout$Behavior;)Landroid/widget/Scroller;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Llenovo/design/widget/AppBarLayout$Behavior$FlingRunnable;->this$0:Llenovo/design/widget/AppBarLayout$Behavior;

    # getter for: Llenovo/design/widget/AppBarLayout$Behavior;->mScroller:Landroid/widget/Scroller;
    invoke-static {v0}, Llenovo/design/widget/AppBarLayout$Behavior;->access$100(Llenovo/design/widget/AppBarLayout$Behavior;)Landroid/widget/Scroller;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 929
    iget-object v0, p0, Llenovo/design/widget/AppBarLayout$Behavior$FlingRunnable;->this$0:Llenovo/design/widget/AppBarLayout$Behavior;

    iget-object v1, p0, Llenovo/design/widget/AppBarLayout$Behavior$FlingRunnable;->mParent:Llenovo/design/widget/CoordinatorLayout;

    iget-object v2, p0, Llenovo/design/widget/AppBarLayout$Behavior$FlingRunnable;->mLayout:Llenovo/design/widget/AppBarLayout;

    iget-object v3, p0, Llenovo/design/widget/AppBarLayout$Behavior$FlingRunnable;->this$0:Llenovo/design/widget/AppBarLayout$Behavior;

    # getter for: Llenovo/design/widget/AppBarLayout$Behavior;->mScroller:Landroid/widget/Scroller;
    invoke-static {v3}, Llenovo/design/widget/AppBarLayout$Behavior;->access$100(Llenovo/design/widget/AppBarLayout$Behavior;)Landroid/widget/Scroller;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Scroller;->getCurrY()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Llenovo/design/widget/AppBarLayout$Behavior;->setAppBarTopBottomOffset(Llenovo/design/widget/CoordinatorLayout;Llenovo/design/widget/AppBarLayout;I)I

    .line 932
    iget-object v0, p0, Llenovo/design/widget/AppBarLayout$Behavior$FlingRunnable;->mLayout:Llenovo/design/widget/AppBarLayout;

    invoke-virtual {v0, p0}, Llenovo/design/widget/AppBarLayout;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 934
    :cond_0
    return-void
.end method
