.class Llenovo/design/widget/AppBarLayout$1;
.super Ljava/lang/Object;
.source "AppBarLayout.java"

# interfaces
.implements Landroid/view/View$OnApplyWindowInsetsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Llenovo/design/widget/AppBarLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Llenovo/design/widget/AppBarLayout;


# direct methods
.method constructor <init>(Llenovo/design/widget/AppBarLayout;)V
    .locals 0

    .prologue
    .line 161
    iput-object p1, p0, Llenovo/design/widget/AppBarLayout$1;->this$0:Llenovo/design/widget/AppBarLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "insets"    # Landroid/view/WindowInsets;

    .prologue
    .line 165
    iget-object v0, p0, Llenovo/design/widget/AppBarLayout$1;->this$0:Llenovo/design/widget/AppBarLayout;

    # invokes: Llenovo/design/widget/AppBarLayout;->setWindowInsets(Landroid/view/WindowInsets;)V
    invoke-static {v0, p2}, Llenovo/design/widget/AppBarLayout;->access$000(Llenovo/design/widget/AppBarLayout;Landroid/view/WindowInsets;)V

    .line 166
    invoke-virtual {p2}, Landroid/view/WindowInsets;->consumeSystemWindowInsets()Landroid/view/WindowInsets;

    move-result-object v0

    return-object v0
.end method
