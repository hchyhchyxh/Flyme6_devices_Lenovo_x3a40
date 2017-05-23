.class Llenovo/design/widget/Snackbar$5;
.super Ljava/lang/Object;
.source "Snackbar.java"

# interfaces
.implements Llenovo/design/widget/Snackbar$SnackbarLayout$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Llenovo/design/widget/Snackbar;->showView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Llenovo/design/widget/Snackbar;


# direct methods
.method constructor <init>(Llenovo/design/widget/Snackbar;)V
    .locals 0

    .prologue
    .line 466
    iput-object p1, p0, Llenovo/design/widget/Snackbar$5;->this$0:Llenovo/design/widget/Snackbar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIII)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 469
    iget-object v0, p0, Llenovo/design/widget/Snackbar$5;->this$0:Llenovo/design/widget/Snackbar;

    # invokes: Llenovo/design/widget/Snackbar;->animateViewIn()V
    invoke-static {v0}, Llenovo/design/widget/Snackbar;->access$300(Llenovo/design/widget/Snackbar;)V

    .line 470
    iget-object v0, p0, Llenovo/design/widget/Snackbar$5;->this$0:Llenovo/design/widget/Snackbar;

    # getter for: Llenovo/design/widget/Snackbar;->mView:Llenovo/design/widget/Snackbar$SnackbarLayout;
    invoke-static {v0}, Llenovo/design/widget/Snackbar;->access$400(Llenovo/design/widget/Snackbar;)Llenovo/design/widget/Snackbar$SnackbarLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Llenovo/design/widget/Snackbar$SnackbarLayout;->setOnLayoutChangeListener(Llenovo/design/widget/Snackbar$SnackbarLayout$OnLayoutChangeListener;)V

    .line 471
    return-void
.end method
