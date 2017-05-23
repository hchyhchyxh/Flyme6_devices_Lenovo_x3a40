.class Llenovo/design/widget/CoordinatorLayout$OnPreDrawListener;
.super Ljava/lang/Object;
.source "CoordinatorLayout.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llenovo/design/widget/CoordinatorLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "OnPreDrawListener"
.end annotation


# instance fields
.field final synthetic this$0:Llenovo/design/widget/CoordinatorLayout;


# direct methods
.method constructor <init>(Llenovo/design/widget/CoordinatorLayout;)V
    .locals 0

    .prologue
    .line 1562
    iput-object p1, p0, Llenovo/design/widget/CoordinatorLayout$OnPreDrawListener;->this$0:Llenovo/design/widget/CoordinatorLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 2

    .prologue
    .line 1565
    iget-object v0, p0, Llenovo/design/widget/CoordinatorLayout$OnPreDrawListener;->this$0:Llenovo/design/widget/CoordinatorLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Llenovo/design/widget/CoordinatorLayout;->dispatchOnDependentViewChanged(Z)V

    .line 1566
    const/4 v0, 0x1

    return v0
.end method
