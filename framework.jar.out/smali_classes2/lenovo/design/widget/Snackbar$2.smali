.class Llenovo/design/widget/Snackbar$2;
.super Ljava/lang/Object;
.source "Snackbar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Llenovo/design/widget/Snackbar;->setAction(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)Llenovo/design/widget/Snackbar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Llenovo/design/widget/Snackbar;

.field final synthetic val$listener:Landroid/view/View$OnClickListener;


# direct methods
.method constructor <init>(Llenovo/design/widget/Snackbar;Landroid/view/View$OnClickListener;)V
    .locals 0

    .prologue
    .line 290
    iput-object p1, p0, Llenovo/design/widget/Snackbar$2;->this$0:Llenovo/design/widget/Snackbar;

    iput-object p2, p0, Llenovo/design/widget/Snackbar$2;->val$listener:Landroid/view/View$OnClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 293
    iget-object v0, p0, Llenovo/design/widget/Snackbar$2;->val$listener:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 295
    iget-object v0, p0, Llenovo/design/widget/Snackbar$2;->this$0:Llenovo/design/widget/Snackbar;

    const/4 v1, 0x1

    # invokes: Llenovo/design/widget/Snackbar;->dispatchDismiss(I)V
    invoke-static {v0, v1}, Llenovo/design/widget/Snackbar;->access$000(Llenovo/design/widget/Snackbar;I)V

    .line 296
    return-void
.end method
