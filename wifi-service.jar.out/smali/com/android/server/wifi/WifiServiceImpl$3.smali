.class Lcom/android/server/wifi/WifiServiceImpl$3;
.super Landroid/content/BroadcastReceiver;
.source "WifiServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiServiceImpl;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiServiceImpl;)V
    .locals 0

    .prologue
    .line 1446
    iput-object p1, p0, Lcom/android/server/wifi/WifiServiceImpl$3;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1449
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1450
    .local v0, "action":Ljava/lang/String;
    const-string v8, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1451
    iget-object v8, p0, Lcom/android/server/wifi/WifiServiceImpl$3;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->mWifiController:Lcom/android/server/wifi/WifiController;
    invoke-static {v8}, Lcom/android/server/wifi/WifiServiceImpl;->access$600(Lcom/android/server/wifi/WifiServiceImpl;)Lcom/android/server/wifi/WifiController;

    move-result-object v8

    const v9, 0x26002

    invoke-virtual {v8, v9}, Lcom/android/server/wifi/WifiController;->sendMessage(I)V

    .line 1527
    :cond_0
    :goto_0
    return-void

    .line 1452
    :cond_1
    const-string v8, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1453
    iget-object v8, p0, Lcom/android/server/wifi/WifiServiceImpl$3;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->mWifiController:Lcom/android/server/wifi/WifiController;
    invoke-static {v8}, Lcom/android/server/wifi/WifiServiceImpl;->access$600(Lcom/android/server/wifi/WifiServiceImpl;)Lcom/android/server/wifi/WifiController;

    move-result-object v8

    const v9, 0x2600c

    invoke-virtual {v8, v9}, Lcom/android/server/wifi/WifiController;->sendMessage(I)V

    goto :goto_0

    .line 1454
    :cond_2
    const-string v8, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1455
    iget-object v8, p0, Lcom/android/server/wifi/WifiServiceImpl$3;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->mWifiController:Lcom/android/server/wifi/WifiController;
    invoke-static {v8}, Lcom/android/server/wifi/WifiServiceImpl;->access$600(Lcom/android/server/wifi/WifiServiceImpl;)Lcom/android/server/wifi/WifiController;

    move-result-object v8

    const v9, 0x26003

    invoke-virtual {v8, v9}, Lcom/android/server/wifi/WifiController;->sendMessage(I)V

    goto :goto_0

    .line 1456
    :cond_3
    const-string v8, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 1457
    const-string v8, "plugged"

    const/4 v9, 0x0

    invoke-virtual {p2, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 1458
    .local v4, "pluggedType":I
    iget-object v8, p0, Lcom/android/server/wifi/WifiServiceImpl$3;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->mWifiController:Lcom/android/server/wifi/WifiController;
    invoke-static {v8}, Lcom/android/server/wifi/WifiServiceImpl;->access$600(Lcom/android/server/wifi/WifiServiceImpl;)Lcom/android/server/wifi/WifiController;

    move-result-object v8

    const v9, 0x26004

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v8, v9, v4, v10, v11}, Lcom/android/server/wifi/WifiController;->sendMessage(IIILjava/lang/Object;)V

    goto :goto_0

    .line 1459
    .end local v4    # "pluggedType":I
    :cond_4
    const-string v8, "android.bluetooth.adapter.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 1460
    const-string v8, "android.bluetooth.adapter.extra.CONNECTION_STATE"

    const/4 v9, 0x0

    invoke-virtual {p2, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 1462
    .local v5, "state":I
    iget-object v8, p0, Lcom/android/server/wifi/WifiServiceImpl$3;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    iget-object v8, v8, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v8, v5}, Lcom/android/server/wifi/WifiStateMachine;->sendBluetoothAdapterStateChange(I)V

    goto :goto_0

    .line 1463
    .end local v5    # "state":I
    :cond_5
    const-string v8, "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 1464
    iget-object v8, p0, Lcom/android/server/wifi/WifiServiceImpl$3;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/android/server/wifi/WifiServiceImpl;->access$200(Lcom/android/server/wifi/WifiServiceImpl;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x1120026

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1465
    const-string v8, "phoneinECMState"

    const/4 v9, 0x0

    invoke-virtual {p2, v8, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 1466
    .local v1, "emergencyMode":Z
    iget-object v8, p0, Lcom/android/server/wifi/WifiServiceImpl$3;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->mWifiController:Lcom/android/server/wifi/WifiController;
    invoke-static {v8}, Lcom/android/server/wifi/WifiServiceImpl;->access$600(Lcom/android/server/wifi/WifiServiceImpl;)Lcom/android/server/wifi/WifiController;

    move-result-object v9

    const v10, 0x26001

    if-eqz v1, :cond_6

    const/4 v8, 0x1

    :goto_1
    const/4 v11, 0x0

    invoke-virtual {v9, v10, v8, v11}, Lcom/android/server/wifi/WifiController;->sendMessage(III)V

    goto/16 :goto_0

    :cond_6
    const/4 v8, 0x0

    goto :goto_1

    .line 1468
    .end local v1    # "emergencyMode":Z
    :cond_7
    const-string v8, "android.os.action.DEVICE_IDLE_MODE_CHANGED"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 1469
    iget-object v8, p0, Lcom/android/server/wifi/WifiServiceImpl$3;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    invoke-virtual {v8}, Lcom/android/server/wifi/WifiServiceImpl;->handleIdleModeChanged()V

    goto/16 :goto_0

    .line 1470
    :cond_8
    const-string v8, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 1471
    const-string v8, "wifi_state"

    const/16 v9, 0xe

    invoke-virtual {p2, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 1473
    .local v6, "wifiApState":I
    const-string v8, "WifiService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "wifiApState="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1483
    const/16 v8, 0xe

    if-ne v6, v8, :cond_0

    .line 1484
    iget-object v8, p0, Lcom/android/server/wifi/WifiServiceImpl$3;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Lcom/android/server/wifi/WifiServiceImpl;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)V

    goto/16 :goto_0

    .line 1486
    .end local v6    # "wifiApState":I
    :cond_9
    const-string v8, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 1487
    const-string v8, "wifi_state"

    const/4 v9, 0x4

    invoke-virtual {p2, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 1498
    .local v7, "wifiState":I
    const/4 v8, 0x5

    if-ne v7, v8, :cond_0

    .line 1499
    const-string v8, "WifiService"

    const-string v9, "Wi-Fi state is failed"

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1500
    iget-object v8, p0, Lcom/android/server/wifi/WifiServiceImpl$3;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/android/server/wifi/WifiServiceImpl;->setWifiEnabled(Z)Z

    goto/16 :goto_0

    .line 1505
    .end local v7    # "wifiState":I
    :cond_a
    const-string v8, "com.lenovo.loggerpannel.action.LOG_STATE_CHANGED"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1507
    const-string v8, "running"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 1509
    .local v3, "logNewState":Z
    const-string v8, "WifiService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "LOG STATE CHANGE, new state:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1511
    const/4 v2, 0x0

    .line 1513
    .local v2, "logLevel":I
    if-eqz v3, :cond_b

    .line 1515
    const/4 v2, 0x2

    .line 1522
    :goto_2
    iget-object v8, p0, Lcom/android/server/wifi/WifiServiceImpl$3;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    iget-object v8, v8, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v8, v2}, Lcom/android/server/wifi/WifiStateMachine;->enableVerboseLogging(I)V

    .line 1523
    iget-object v8, p0, Lcom/android/server/wifi/WifiServiceImpl$3;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->mWifiController:Lcom/android/server/wifi/WifiController;
    invoke-static {v8}, Lcom/android/server/wifi/WifiServiceImpl;->access$600(Lcom/android/server/wifi/WifiServiceImpl;)Lcom/android/server/wifi/WifiController;

    move-result-object v8

    invoke-virtual {v8, v2}, Lcom/android/server/wifi/WifiController;->enableVerboseLogging(I)V

    .line 1524
    iget-object v8, p0, Lcom/android/server/wifi/WifiServiceImpl$3;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->mTrafficPoller:Lcom/android/server/wifi/WifiTrafficPoller;
    invoke-static {v8}, Lcom/android/server/wifi/WifiServiceImpl;->access$100(Lcom/android/server/wifi/WifiServiceImpl;)Lcom/android/server/wifi/WifiTrafficPoller;

    move-result-object v8

    invoke-virtual {v8, v2}, Lcom/android/server/wifi/WifiTrafficPoller;->enableVerboseLogging(I)V

    goto/16 :goto_0

    .line 1519
    :cond_b
    const/4 v2, 0x0

    goto :goto_2
.end method
