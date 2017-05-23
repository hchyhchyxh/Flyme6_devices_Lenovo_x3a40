.class Llenovo/design/widget/TextInputLayout$TextInputAccessibilityDelegate;
.super Landroid/view/View$AccessibilityDelegate;
.source "TextInputLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llenovo/design/widget/TextInputLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TextInputAccessibilityDelegate"
.end annotation


# instance fields
.field final synthetic this$0:Llenovo/design/widget/TextInputLayout;


# direct methods
.method private constructor <init>(Llenovo/design/widget/TextInputLayout;)V
    .locals 0

    .prologue
    .line 507
    iput-object p1, p0, Llenovo/design/widget/TextInputLayout$TextInputAccessibilityDelegate;->this$0:Llenovo/design/widget/TextInputLayout;

    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Llenovo/design/widget/TextInputLayout;Llenovo/design/widget/TextInputLayout$1;)V
    .locals 0
    .param p1, "x0"    # Llenovo/design/widget/TextInputLayout;
    .param p2, "x1"    # Llenovo/design/widget/TextInputLayout$1;

    .prologue
    .line 507
    invoke-direct {p0, p1}, Llenovo/design/widget/TextInputLayout$TextInputAccessibilityDelegate;-><init>(Llenovo/design/widget/TextInputLayout;)V

    return-void
.end method


# virtual methods
.method public onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "host"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 510
    invoke-super {p0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 511
    const-class v0, Llenovo/design/widget/TextInputLayout;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 512
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 3
    .param p1, "host"    # Landroid/view/View;
    .param p2, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 526
    invoke-super {p0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 527
    const-class v2, Llenovo/design/widget/TextInputLayout;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 529
    iget-object v2, p0, Llenovo/design/widget/TextInputLayout$TextInputAccessibilityDelegate;->this$0:Llenovo/design/widget/TextInputLayout;

    # getter for: Llenovo/design/widget/TextInputLayout;->mCollapsingTextHelper:Llenovo/design/widget/CollapsingTextHelper;
    invoke-static {v2}, Llenovo/design/widget/TextInputLayout;->access$300(Llenovo/design/widget/TextInputLayout;)Llenovo/design/widget/CollapsingTextHelper;

    move-result-object v2

    invoke-virtual {v2}, Llenovo/design/widget/CollapsingTextHelper;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    .line 530
    .local v1, "text":Ljava/lang/CharSequence;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 531
    invoke-virtual {p2, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    .line 533
    :cond_0
    iget-object v2, p0, Llenovo/design/widget/TextInputLayout$TextInputAccessibilityDelegate;->this$0:Llenovo/design/widget/TextInputLayout;

    # getter for: Llenovo/design/widget/TextInputLayout;->mEditText:Landroid/widget/EditText;
    invoke-static {v2}, Llenovo/design/widget/TextInputLayout;->access$400(Llenovo/design/widget/TextInputLayout;)Landroid/widget/EditText;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 534
    iget-object v2, p0, Llenovo/design/widget/TextInputLayout$TextInputAccessibilityDelegate;->this$0:Llenovo/design/widget/TextInputLayout;

    # getter for: Llenovo/design/widget/TextInputLayout;->mEditText:Landroid/widget/EditText;
    invoke-static {v2}, Llenovo/design/widget/TextInputLayout;->access$400(Llenovo/design/widget/TextInputLayout;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setLabelFor(Landroid/view/View;)V

    .line 536
    :cond_1
    iget-object v2, p0, Llenovo/design/widget/TextInputLayout$TextInputAccessibilityDelegate;->this$0:Llenovo/design/widget/TextInputLayout;

    # getter for: Llenovo/design/widget/TextInputLayout;->mErrorView:Landroid/widget/TextView;
    invoke-static {v2}, Llenovo/design/widget/TextInputLayout;->access$200(Llenovo/design/widget/TextInputLayout;)Landroid/widget/TextView;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Llenovo/design/widget/TextInputLayout$TextInputAccessibilityDelegate;->this$0:Llenovo/design/widget/TextInputLayout;

    # getter for: Llenovo/design/widget/TextInputLayout;->mErrorView:Landroid/widget/TextView;
    invoke-static {v2}, Llenovo/design/widget/TextInputLayout;->access$200(Llenovo/design/widget/TextInputLayout;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 537
    .local v0, "error":Ljava/lang/CharSequence;
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 538
    const/4 v2, 0x1

    invoke-virtual {p2, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setContentInvalid(Z)V

    .line 539
    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setError(Ljava/lang/CharSequence;)V

    .line 541
    :cond_2
    return-void

    .line 536
    .end local v0    # "error":Ljava/lang/CharSequence;
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2
    .param p1, "host"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 516
    invoke-super {p0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 518
    iget-object v1, p0, Llenovo/design/widget/TextInputLayout$TextInputAccessibilityDelegate;->this$0:Llenovo/design/widget/TextInputLayout;

    # getter for: Llenovo/design/widget/TextInputLayout;->mCollapsingTextHelper:Llenovo/design/widget/CollapsingTextHelper;
    invoke-static {v1}, Llenovo/design/widget/TextInputLayout;->access$300(Llenovo/design/widget/TextInputLayout;)Llenovo/design/widget/CollapsingTextHelper;

    move-result-object v1

    invoke-virtual {v1}, Llenovo/design/widget/CollapsingTextHelper;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 519
    .local v0, "text":Ljava/lang/CharSequence;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 520
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 522
    :cond_0
    return-void
.end method
