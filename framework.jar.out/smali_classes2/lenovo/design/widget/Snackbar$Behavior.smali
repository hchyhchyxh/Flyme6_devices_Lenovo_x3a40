.class final Llenovo/design/widget/Snackbar$Behavior;
.super Llenovo/design/widget/SwipeDismissBehavior;
.source "Snackbar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llenovo/design/widget/Snackbar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "Behavior"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llenovo/design/widget/SwipeDismissBehavior",
        "<",
        "Llenovo/design/widget/Snackbar$SnackbarLayout;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Llenovo/design/widget/Snackbar;


# direct methods
.method constructor <init>(Llenovo/design/widget/Snackbar;)V
    .locals 0

    .prologue
    .line 745
    iput-object p1, p0, Llenovo/design/widget/Snackbar$Behavior;->this$0:Llenovo/design/widget/Snackbar;

    invoke-direct {p0}, Llenovo/design/widget/SwipeDismissBehavior;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onInterceptTouchEvent(Llenovo/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "x0"    # Llenovo/design/widget/CoordinatorLayout;
    .param p2, "x1"    # Landroid/view/View;
    .param p3, "x2"    # Landroid/view/MotionEvent;

    .prologue
    .line 745
    check-cast p2, Llenovo/design/widget/Snackbar$SnackbarLayout;

    .end local p2    # "x1":Landroid/view/View;
    invoke-virtual {p0, p1, p2, p3}, Llenovo/design/widget/Snackbar$Behavior;->onInterceptTouchEvent(Llenovo/design/widget/CoordinatorLayout;Llenovo/design/widget/Snackbar$SnackbarLayout;Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onInterceptTouchEvent(Llenovo/design/widget/CoordinatorLayout;Llenovo/design/widget/Snackbar$SnackbarLayout;Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "parent"    # Llenovo/design/widget/CoordinatorLayout;
    .param p2, "child"    # Llenovo/design/widget/Snackbar$SnackbarLayout;
    .param p3, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 751
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1, p2, v0, v1}, Llenovo/design/widget/CoordinatorLayout;->isPointInChildBounds(Landroid/view/View;II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 752
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 763
    :cond_0
    :goto_0
    :pswitch_0
    invoke-super {p0, p1, p2, p3}, Llenovo/design/widget/SwipeDismissBehavior;->onInterceptTouchEvent(Llenovo/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 754
    :pswitch_1
    invoke-static {}, Llenovo/design/widget/SnackbarManager;->getInstance()Llenovo/design/widget/SnackbarManager;

    move-result-object v0

    iget-object v1, p0, Llenovo/design/widget/Snackbar$Behavior;->this$0:Llenovo/design/widget/Snackbar;

    # getter for: Llenovo/design/widget/Snackbar;->mManagerCallback:Llenovo/design/widget/SnackbarManager$Callback;
    invoke-static {v1}, Llenovo/design/widget/Snackbar;->access$200(Llenovo/design/widget/Snackbar;)Llenovo/design/widget/SnackbarManager$Callback;

    move-result-object v1

    invoke-virtual {v0, v1}, Llenovo/design/widget/SnackbarManager;->cancelTimeout(Llenovo/design/widget/SnackbarManager$Callback;)V

    goto :goto_0

    .line 758
    :pswitch_2
    invoke-static {}, Llenovo/design/widget/SnackbarManager;->getInstance()Llenovo/design/widget/SnackbarManager;

    move-result-object v0

    iget-object v1, p0, Llenovo/design/widget/Snackbar$Behavior;->this$0:Llenovo/design/widget/Snackbar;

    # getter for: Llenovo/design/widget/Snackbar;->mManagerCallback:Llenovo/design/widget/SnackbarManager$Callback;
    invoke-static {v1}, Llenovo/design/widget/Snackbar;->access$200(Llenovo/design/widget/Snackbar;)Llenovo/design/widget/SnackbarManager$Callback;

    move-result-object v1

    invoke-virtual {v0, v1}, Llenovo/design/widget/SnackbarManager;->restoreTimeout(Llenovo/design/widget/SnackbarManager$Callback;)V

    goto :goto_0

    .line 752
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
