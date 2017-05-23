.class Llenovo/design/widget/SwipeDismissBehavior$SettleRunnable;
.super Ljava/lang/Object;
.source "SwipeDismissBehavior.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llenovo/design/widget/SwipeDismissBehavior;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettleRunnable"
.end annotation


# instance fields
.field private final mDismiss:Z

.field private final mView:Landroid/view/View;

.field final synthetic this$0:Llenovo/design/widget/SwipeDismissBehavior;


# direct methods
.method constructor <init>(Llenovo/design/widget/SwipeDismissBehavior;Landroid/view/View;Z)V
    .locals 0
    .param p2, "view"    # Landroid/view/View;
    .param p3, "dismiss"    # Z

    .prologue
    .line 334
    .local p0, "this":Llenovo/design/widget/SwipeDismissBehavior$SettleRunnable;, "Llenovo/design/widget/SwipeDismissBehavior<TV;>.SettleRunnable;"
    iput-object p1, p0, Llenovo/design/widget/SwipeDismissBehavior$SettleRunnable;->this$0:Llenovo/design/widget/SwipeDismissBehavior;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 335
    iput-object p2, p0, Llenovo/design/widget/SwipeDismissBehavior$SettleRunnable;->mView:Landroid/view/View;

    .line 336
    iput-boolean p3, p0, Llenovo/design/widget/SwipeDismissBehavior$SettleRunnable;->mDismiss:Z

    .line 337
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 341
    .local p0, "this":Llenovo/design/widget/SwipeDismissBehavior$SettleRunnable;, "Llenovo/design/widget/SwipeDismissBehavior<TV;>.SettleRunnable;"
    iget-object v0, p0, Llenovo/design/widget/SwipeDismissBehavior$SettleRunnable;->this$0:Llenovo/design/widget/SwipeDismissBehavior;

    # getter for: Llenovo/design/widget/SwipeDismissBehavior;->mViewDragHelper:Llenovo/design/widget/ViewDragHelper;
    invoke-static {v0}, Llenovo/design/widget/SwipeDismissBehavior;->access$100(Llenovo/design/widget/SwipeDismissBehavior;)Llenovo/design/widget/ViewDragHelper;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Llenovo/design/widget/SwipeDismissBehavior$SettleRunnable;->this$0:Llenovo/design/widget/SwipeDismissBehavior;

    # getter for: Llenovo/design/widget/SwipeDismissBehavior;->mViewDragHelper:Llenovo/design/widget/ViewDragHelper;
    invoke-static {v0}, Llenovo/design/widget/SwipeDismissBehavior;->access$100(Llenovo/design/widget/SwipeDismissBehavior;)Llenovo/design/widget/ViewDragHelper;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Llenovo/design/widget/ViewDragHelper;->continueSettling(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 342
    iget-object v0, p0, Llenovo/design/widget/SwipeDismissBehavior$SettleRunnable;->mView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 348
    :cond_0
    :goto_0
    return-void

    .line 344
    :cond_1
    iget-boolean v0, p0, Llenovo/design/widget/SwipeDismissBehavior$SettleRunnable;->mDismiss:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Llenovo/design/widget/SwipeDismissBehavior$SettleRunnable;->this$0:Llenovo/design/widget/SwipeDismissBehavior;

    # getter for: Llenovo/design/widget/SwipeDismissBehavior;->mListener:Llenovo/design/widget/SwipeDismissBehavior$OnDismissListener;
    invoke-static {v0}, Llenovo/design/widget/SwipeDismissBehavior;->access$000(Llenovo/design/widget/SwipeDismissBehavior;)Llenovo/design/widget/SwipeDismissBehavior$OnDismissListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 345
    iget-object v0, p0, Llenovo/design/widget/SwipeDismissBehavior$SettleRunnable;->this$0:Llenovo/design/widget/SwipeDismissBehavior;

    # getter for: Llenovo/design/widget/SwipeDismissBehavior;->mListener:Llenovo/design/widget/SwipeDismissBehavior$OnDismissListener;
    invoke-static {v0}, Llenovo/design/widget/SwipeDismissBehavior;->access$000(Llenovo/design/widget/SwipeDismissBehavior;)Llenovo/design/widget/SwipeDismissBehavior$OnDismissListener;

    move-result-object v0

    iget-object v1, p0, Llenovo/design/widget/SwipeDismissBehavior$SettleRunnable;->mView:Landroid/view/View;

    invoke-interface {v0, v1}, Llenovo/design/widget/SwipeDismissBehavior$OnDismissListener;->onDismiss(Landroid/view/View;)V

    goto :goto_0
.end method
