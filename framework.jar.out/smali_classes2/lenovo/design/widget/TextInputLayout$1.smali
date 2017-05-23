.class Llenovo/design/widget/TextInputLayout$1;
.super Ljava/lang/Object;
.source "TextInputLayout.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Llenovo/design/widget/TextInputLayout;->setEditText(Landroid/widget/EditText;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Llenovo/design/widget/TextInputLayout;


# direct methods
.method constructor <init>(Llenovo/design/widget/TextInputLayout;)V
    .locals 0

    .prologue
    .line 162
    iput-object p1, p0, Llenovo/design/widget/TextInputLayout$1;->this$0:Llenovo/design/widget/TextInputLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 165
    iget-object v0, p0, Llenovo/design/widget/TextInputLayout$1;->this$0:Llenovo/design/widget/TextInputLayout;

    const/4 v1, 0x1

    # invokes: Llenovo/design/widget/TextInputLayout;->updateLabelVisibility(Z)V
    invoke-static {v0, v1}, Llenovo/design/widget/TextInputLayout;->access$100(Llenovo/design/widget/TextInputLayout;Z)V

    .line 166
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 169
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 172
    return-void
.end method
