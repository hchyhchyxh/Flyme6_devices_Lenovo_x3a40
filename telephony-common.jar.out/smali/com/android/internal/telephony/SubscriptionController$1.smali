.class Lcom/android/internal/telephony/SubscriptionController$1;
.super Landroid/os/Handler;
.source "SubscriptionController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SubscriptionController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/SubscriptionController;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/SubscriptionController;)V
    .locals 0

    .prologue
    .line 176
    iput-object p1, p0, Lcom/android/internal/telephony/SubscriptionController$1;->this$0:Lcom/android/internal/telephony/SubscriptionController;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 180
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 212
    :goto_0
    return-void

    .line 182
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 183
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_0

    .line 184
    iget-object v2, p0, Lcom/android/internal/telephony/SubscriptionController$1;->this$0:Lcom/android/internal/telephony/SubscriptionController;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/android/internal/telephony/SubscriptionController;->mSuccess:Z

    .line 186
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/SubscriptionController$1;->this$0:Lcom/android/internal/telephony/SubscriptionController;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EVENT_WRITE_MSISDN_DONE, mSuccess = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/SubscriptionController$1;->this$0:Lcom/android/internal/telephony/SubscriptionController;

    iget-boolean v4, v4, Lcom/android/internal/telephony/SubscriptionController;->mSuccess:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/internal/telephony/SubscriptionController;->access$000(Lcom/android/internal/telephony/SubscriptionController;Ljava/lang/String;)V

    goto :goto_0

    .line 191
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_1
    iget-object v2, p0, Lcom/android/internal/telephony/SubscriptionController$1;->this$0:Lcom/android/internal/telephony/SubscriptionController;

    const/4 v3, 0x0

    # setter for: Lcom/android/internal/telephony/SubscriptionController;->isPrimaryCardConfigProcess:Z
    invoke-static {v2, v3}, Lcom/android/internal/telephony/SubscriptionController;->access$102(Lcom/android/internal/telephony/SubscriptionController;Z)Z

    .line 192
    iget-object v2, p0, Lcom/android/internal/telephony/SubscriptionController$1;->this$0:Lcom/android/internal/telephony/SubscriptionController;

    # getter for: Lcom/android/internal/telephony/SubscriptionController;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/android/internal/telephony/SubscriptionController;->access$200(Lcom/android/internal/telephony/SubscriptionController;)Landroid/app/ProgressDialog;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/telephony/SubscriptionController$1;->this$0:Lcom/android/internal/telephony/SubscriptionController;

    # getter for: Lcom/android/internal/telephony/SubscriptionController;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/android/internal/telephony/SubscriptionController;->access$200(Lcom/android/internal/telephony/SubscriptionController;)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 193
    iget-object v2, p0, Lcom/android/internal/telephony/SubscriptionController$1;->this$0:Lcom/android/internal/telephony/SubscriptionController;

    # getter for: Lcom/android/internal/telephony/SubscriptionController;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/android/internal/telephony/SubscriptionController;->access$200(Lcom/android/internal/telephony/SubscriptionController;)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->dismiss()V

    .line 195
    :cond_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 196
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 197
    .local v1, "subId":I
    iget-object v2, p0, Lcom/android/internal/telephony/SubscriptionController$1;->this$0:Lcom/android/internal/telephony/SubscriptionController;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EVENT_STACK_READY: subId "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/internal/telephony/SubscriptionController;->access$000(Lcom/android/internal/telephony/SubscriptionController;Ljava/lang/String;)V

    .line 198
    iget-object v2, p0, Lcom/android/internal/telephony/SubscriptionController$1;->this$0:Lcom/android/internal/telephony/SubscriptionController;

    # getter for: Lcom/android/internal/telephony/SubscriptionController;->mPendingPrimaryCardSubId:I
    invoke-static {v2}, Lcom/android/internal/telephony/SubscriptionController;->access$300(Lcom/android/internal/telephony/SubscriptionController;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    .line 199
    iget-object v2, p0, Lcom/android/internal/telephony/SubscriptionController$1;->this$0:Lcom/android/internal/telephony/SubscriptionController;

    const-string v3, "set pending defaultdataSubId!!"

    # invokes: Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/internal/telephony/SubscriptionController;->access$000(Lcom/android/internal/telephony/SubscriptionController;Ljava/lang/String;)V

    .line 200
    iget-object v2, p0, Lcom/android/internal/telephony/SubscriptionController$1;->this$0:Lcom/android/internal/telephony/SubscriptionController;

    iget-object v3, p0, Lcom/android/internal/telephony/SubscriptionController$1;->this$0:Lcom/android/internal/telephony/SubscriptionController;

    # getter for: Lcom/android/internal/telephony/SubscriptionController;->mPendingPrimaryCardSubId:I
    invoke-static {v3}, Lcom/android/internal/telephony/SubscriptionController;->access$300(Lcom/android/internal/telephony/SubscriptionController;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/SubscriptionController;->setDefaultDataSubId(I)V

    goto/16 :goto_0

    .line 202
    :cond_2
    iget-object v2, p0, Lcom/android/internal/telephony/SubscriptionController$1;->this$0:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v2, v1}, Lcom/android/internal/telephony/SubscriptionController;->setInternalDataSubId(I)V

    goto/16 :goto_0

    .line 207
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v1    # "subId":I
    :pswitch_2
    iget-object v2, p0, Lcom/android/internal/telephony/SubscriptionController$1;->this$0:Lcom/android/internal/telephony/SubscriptionController;

    # invokes: Lcom/android/internal/telephony/SubscriptionController;->showProgressDialog()V
    invoke-static {v2}, Lcom/android/internal/telephony/SubscriptionController;->access$400(Lcom/android/internal/telephony/SubscriptionController;)V

    goto/16 :goto_0

    .line 180
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
