.class Lcom/android/server/connectivity/Tethering$StateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "Tethering.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/Tethering;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StateReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/connectivity/Tethering;


# direct methods
.method private constructor <init>(Lcom/android/server/connectivity/Tethering;)V
    .locals 0

    .prologue
    .line 815
    iput-object p1, p0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/connectivity/Tethering;Lcom/android/server/connectivity/Tethering$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/connectivity/Tethering;
    .param p2, "x1"    # Lcom/android/server/connectivity/Tethering$1;

    .prologue
    .line 815
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Tethering$StateReceiver;-><init>(Lcom/android/server/connectivity/Tethering;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .param p1, "content"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v10, 0x0

    const/16 v9, 0xd

    const/16 v8, 0xb

    .line 818
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 819
    .local v0, "action":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 863
    :cond_0
    :goto_0
    return-void

    .line 820
    :cond_1
    const-string v5, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 821
    iget-object v5, p0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    # getter for: Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;
    invoke-static {v5}, Lcom/android/server/connectivity/Tethering;->access$600(Lcom/android/server/connectivity/Tethering;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6

    .line 822
    :try_start_0
    const-string v5, "connected"

    const/4 v7, 0x0

    invoke-virtual {p2, v5, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 823
    .local v3, "usbConnected":Z
    iget-object v5, p0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    const-string v7, "rndis"

    const/4 v8, 0x0

    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    # setter for: Lcom/android/server/connectivity/Tethering;->mRndisEnabled:Z
    invoke-static {v5, v7}, Lcom/android/server/connectivity/Tethering;->access$702(Lcom/android/server/connectivity/Tethering;Z)Z

    .line 825
    if-eqz v3, :cond_2

    iget-object v5, p0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    # getter for: Lcom/android/server/connectivity/Tethering;->mRndisEnabled:Z
    invoke-static {v5}, Lcom/android/server/connectivity/Tethering;->access$700(Lcom/android/server/connectivity/Tethering;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    # getter for: Lcom/android/server/connectivity/Tethering;->mUsbTetherRequested:Z
    invoke-static {v5}, Lcom/android/server/connectivity/Tethering;->access$800(Lcom/android/server/connectivity/Tethering;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 826
    iget-object v5, p0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    const/4 v7, 0x1

    # invokes: Lcom/android/server/connectivity/Tethering;->tetherUsb(Z)V
    invoke-static {v5, v7}, Lcom/android/server/connectivity/Tethering;->access$900(Lcom/android/server/connectivity/Tethering;Z)V

    .line 828
    :cond_2
    iget-object v5, p0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    const/4 v7, 0x0

    # setter for: Lcom/android/server/connectivity/Tethering;->mUsbTetherRequested:Z
    invoke-static {v5, v7}, Lcom/android/server/connectivity/Tethering;->access$802(Lcom/android/server/connectivity/Tethering;Z)Z

    .line 829
    monitor-exit v6

    goto :goto_0

    .end local v3    # "usbConnected":Z
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 830
    :cond_3
    const-string v5, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 831
    const-string v5, "networkInfo"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkInfo;

    .line 833
    .local v2, "networkInfo":Landroid/net/NetworkInfo;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v5

    sget-object v6, Landroid/net/NetworkInfo$DetailedState;->FAILED:Landroid/net/NetworkInfo$DetailedState;

    if-eq v5, v6, :cond_0

    .line 836
    iget-object v5, p0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    # getter for: Lcom/android/server/connectivity/Tethering;->mTetherMasterSM:Lcom/android/internal/util/StateMachine;
    invoke-static {v5}, Lcom/android/server/connectivity/Tethering;->access$1000(Lcom/android/server/connectivity/Tethering;)Lcom/android/internal/util/StateMachine;

    move-result-object v5

    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    goto :goto_0

    .line 838
    .end local v2    # "networkInfo":Landroid/net/NetworkInfo;
    :cond_4
    const-string v5, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 839
    iget-object v5, p0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-virtual {v5}, Lcom/android/server/connectivity/Tethering;->updateConfiguration()V

    goto :goto_0

    .line 840
    :cond_5
    const-string v5, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 841
    const-string v5, "wifi_state"

    invoke-virtual {p2, v5, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 842
    .local v4, "wifiApState":I
    const-string v5, "Tethering"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "WIFI_AP_STATE_CHANGED: wifiApState="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 843
    if-eq v4, v9, :cond_6

    if-ne v4, v8, :cond_7

    .line 845
    :cond_6
    iget-object v5, p0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    # getter for: Lcom/android/server/connectivity/Tethering;->mConnectedDeviceMap:Ljava/util/HashMap;
    invoke-static {v5}, Lcom/android/server/connectivity/Tethering;->access$300(Lcom/android/server/connectivity/Tethering;)Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/HashMap;->clear()V

    .line 846
    iget-object v5, p0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    # getter for: Lcom/android/server/connectivity/Tethering;->mL2ConnectedDeviceMap:Ljava/util/HashMap;
    invoke-static {v5}, Lcom/android/server/connectivity/Tethering;->access$200(Lcom/android/server/connectivity/Tethering;)Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/HashMap;->clear()V

    .line 850
    :cond_7
    if-ne v4, v9, :cond_8

    iget-object v5, p0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    # getter for: Lcom/android/server/connectivity/Tethering;->mHotspotClientReceiver:Landroid/content/BroadcastReceiver;
    invoke-static {v5}, Lcom/android/server/connectivity/Tethering;->access$1100(Lcom/android/server/connectivity/Tethering;)Landroid/content/BroadcastReceiver;

    move-result-object v5

    if-nez v5, :cond_8

    .line 851
    iget-object v5, p0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    new-instance v6, Lcom/android/server/connectivity/Tethering$HostspotClientReceiver;

    iget-object v7, p0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-direct {v6, v7, v10}, Lcom/android/server/connectivity/Tethering$HostspotClientReceiver;-><init>(Lcom/android/server/connectivity/Tethering;Lcom/android/server/connectivity/Tethering$1;)V

    # setter for: Lcom/android/server/connectivity/Tethering;->mHotspotClientReceiver:Landroid/content/BroadcastReceiver;
    invoke-static {v5, v6}, Lcom/android/server/connectivity/Tethering;->access$1102(Lcom/android/server/connectivity/Tethering;Landroid/content/BroadcastReceiver;)Landroid/content/BroadcastReceiver;

    .line 852
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 853
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string v5, "android.net.wifi.WIFI_HOTSPOT_CLIENTS_CHANGED"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 854
    iget-object v5, p0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    # getter for: Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/server/connectivity/Tethering;->access$1300(Lcom/android/server/connectivity/Tethering;)Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    # getter for: Lcom/android/server/connectivity/Tethering;->mHotspotClientReceiver:Landroid/content/BroadcastReceiver;
    invoke-static {v6}, Lcom/android/server/connectivity/Tethering;->access$1100(Lcom/android/server/connectivity/Tethering;)Landroid/content/BroadcastReceiver;

    move-result-object v6

    invoke-virtual {v5, v6, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto/16 :goto_0

    .line 855
    .end local v1    # "filter":Landroid/content/IntentFilter;
    :cond_8
    const/16 v5, 0xa

    if-ne v4, v5, :cond_0

    iget-object v5, p0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    # getter for: Lcom/android/server/connectivity/Tethering;->mHotspotClientReceiver:Landroid/content/BroadcastReceiver;
    invoke-static {v5}, Lcom/android/server/connectivity/Tethering;->access$1100(Lcom/android/server/connectivity/Tethering;)Landroid/content/BroadcastReceiver;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 856
    iget-object v5, p0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    # getter for: Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/server/connectivity/Tethering;->access$1300(Lcom/android/server/connectivity/Tethering;)Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    # getter for: Lcom/android/server/connectivity/Tethering;->mHotspotClientReceiver:Landroid/content/BroadcastReceiver;
    invoke-static {v6}, Lcom/android/server/connectivity/Tethering;->access$1100(Lcom/android/server/connectivity/Tethering;)Landroid/content/BroadcastReceiver;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 857
    iget-object v5, p0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    # setter for: Lcom/android/server/connectivity/Tethering;->mHotspotClientReceiver:Landroid/content/BroadcastReceiver;
    invoke-static {v5, v10}, Lcom/android/server/connectivity/Tethering;->access$1102(Lcom/android/server/connectivity/Tethering;Landroid/content/BroadcastReceiver;)Landroid/content/BroadcastReceiver;

    .line 858
    iget-object v5, p0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    # getter for: Lcom/android/server/connectivity/Tethering;->mHotspotClientList:Ljava/util/List;
    invoke-static {v5}, Lcom/android/server/connectivity/Tethering;->access$1400(Lcom/android/server/connectivity/Tethering;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->clear()V

    goto/16 :goto_0
.end method
