.class Landroid/content/ContentProvider$Transport;
.super Landroid/content/ContentProviderNative;
.source "ContentProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/ContentProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Transport"
.end annotation


# instance fields
.field mAppOpsManager:Landroid/app/AppOpsManager;

.field mReadOp:I

.field mWriteOp:I

.field final synthetic this$0:Landroid/content/ContentProvider;


# direct methods
.method constructor <init>(Landroid/content/ContentProvider;)V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 194
    iput-object p1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-direct {p0}, Landroid/content/ContentProviderNative;-><init>()V

    .line 195
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/ContentProvider$Transport;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 196
    iput v1, p0, Landroid/content/ContentProvider$Transport;->mReadOp:I

    .line 197
    iput v1, p0, Landroid/content/ContentProvider$Transport;->mWriteOp:I

    return-void
.end method

.method private enforceFilePermission(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "callingPkg"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "mode"    # Ljava/lang/String;
    .param p4, "callerToken"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 468
    if-eqz p3, :cond_0

    const/16 v0, 0x77

    invoke-virtual {p3, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 469
    invoke-direct {p0, p1, p2, p4}, Landroid/content/ContentProvider$Transport;->enforceWritePermission(Ljava/lang/String;Landroid/net/Uri;Landroid/os/IBinder;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 471
    new-instance v0, Ljava/io/FileNotFoundException;

    const-string v1, "App op not allowed"

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 474
    :cond_0
    invoke-direct {p0, p1, p2, p4}, Landroid/content/ContentProvider$Transport;->enforceReadPermission(Ljava/lang/String;Landroid/net/Uri;Landroid/os/IBinder;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 476
    new-instance v0, Ljava/io/FileNotFoundException;

    const-string v1, "App op not allowed"

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 479
    :cond_1
    return-void
.end method

.method private enforceReadPermission(Ljava/lang/String;Landroid/net/Uri;Landroid/os/IBinder;)I
    .locals 3
    .param p1, "callingPkg"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "callerToken"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 483
    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-virtual {v1, p2, p1, p3}, Landroid/content/ContentProvider;->enforceReadPermissionInner(Landroid/net/Uri;Ljava/lang/String;Landroid/os/IBinder;)I

    move-result v0

    .line 484
    .local v0, "mode":I
    if-eqz v0, :cond_0

    .line 492
    .end local v0    # "mode":I
    :goto_0
    return v0

    .line 488
    .restart local v0    # "mode":I
    :cond_0
    iget v1, p0, Landroid/content/ContentProvider$Transport;->mReadOp:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 489
    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->mAppOpsManager:Landroid/app/AppOpsManager;

    iget v2, p0, Landroid/content/ContentProvider$Transport;->mReadOp:I

    invoke-virtual {v1, v2, p1}, Landroid/app/AppOpsManager;->noteProxyOp(ILjava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 492
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private enforceWritePermission(Ljava/lang/String;Landroid/net/Uri;Landroid/os/IBinder;)I
    .locals 3
    .param p1, "callingPkg"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "callerToken"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 497
    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-virtual {v1, p2, p1, p3}, Landroid/content/ContentProvider;->enforceWritePermissionInner(Landroid/net/Uri;Ljava/lang/String;Landroid/os/IBinder;)I

    move-result v0

    .line 498
    .local v0, "mode":I
    if-eqz v0, :cond_0

    .line 506
    .end local v0    # "mode":I
    :goto_0
    return v0

    .line 502
    .restart local v0    # "mode":I
    :cond_0
    iget v1, p0, Landroid/content/ContentProvider$Transport;->mWriteOp:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 503
    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->mAppOpsManager:Landroid/app/AppOpsManager;

    iget v2, p0, Landroid/content/ContentProvider$Transport;->mWriteOp:I

    invoke-virtual {v1, v2, p1}, Landroid/app/AppOpsManager;->noteProxyOp(ILjava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 506
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    .locals 12
    .param p1, "callingPkg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;)[",
            "Landroid/content/ContentProviderResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/OperationApplicationException;
        }
    .end annotation

    .prologue
    .local p2, "operations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, -0x2

    .line 291
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 292
    .local v1, "numOperations":I
    new-array v7, v1, [I

    .line 293
    .local v7, "userIds":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_3

    .line 294
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ContentProviderOperation;

    .line 295
    .local v2, "operation":Landroid/content/ContentProviderOperation;
    invoke-virtual {v2}, Landroid/content/ContentProviderOperation;->getUri()Landroid/net/Uri;

    move-result-object v6

    .line 296
    .local v6, "uri":Landroid/net/Uri;
    iget-object v8, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    # invokes: Landroid/content/ContentProvider;->validateIncomingUri(Landroid/net/Uri;)V
    invoke-static {v8, v6}, Landroid/content/ContentProvider;->access$000(Landroid/content/ContentProvider;Landroid/net/Uri;)V

    .line 297
    invoke-static {v6}, Landroid/content/ContentProvider;->getUserIdFromUri(Landroid/net/Uri;)I

    move-result v8

    aput v8, v7, v0

    .line 298
    aget v8, v7, v0

    if-eq v8, v11, :cond_0

    .line 300
    new-instance v3, Landroid/content/ContentProviderOperation;

    const/4 v8, 0x1

    invoke-direct {v3, v2, v8}, Landroid/content/ContentProviderOperation;-><init>(Landroid/content/ContentProviderOperation;Z)V

    .line 301
    .end local v2    # "operation":Landroid/content/ContentProviderOperation;
    .local v3, "operation":Landroid/content/ContentProviderOperation;
    invoke-virtual {p2, v0, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-object v2, v3

    .line 303
    .end local v3    # "operation":Landroid/content/ContentProviderOperation;
    .restart local v2    # "operation":Landroid/content/ContentProviderOperation;
    :cond_0
    invoke-virtual {v2}, Landroid/content/ContentProviderOperation;->isReadOperation()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 304
    invoke-direct {p0, p1, v6, v9}, Landroid/content/ContentProvider$Transport;->enforceReadPermission(Ljava/lang/String;Landroid/net/Uri;Landroid/os/IBinder;)I

    move-result v8

    if-eqz v8, :cond_1

    .line 306
    new-instance v8, Landroid/content/OperationApplicationException;

    const-string v9, "App op not allowed"

    invoke-direct {v8, v9, v10}, Landroid/content/OperationApplicationException;-><init>(Ljava/lang/String;I)V

    throw v8

    .line 309
    :cond_1
    invoke-virtual {v2}, Landroid/content/ContentProviderOperation;->isWriteOperation()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 310
    invoke-direct {p0, p1, v6, v9}, Landroid/content/ContentProvider$Transport;->enforceWritePermission(Ljava/lang/String;Landroid/net/Uri;Landroid/os/IBinder;)I

    move-result v8

    if-eqz v8, :cond_2

    .line 312
    new-instance v8, Landroid/content/OperationApplicationException;

    const-string v9, "App op not allowed"

    invoke-direct {v8, v9, v10}, Landroid/content/OperationApplicationException;-><init>(Ljava/lang/String;I)V

    throw v8

    .line 293
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 316
    .end local v2    # "operation":Landroid/content/ContentProviderOperation;
    .end local v6    # "uri":Landroid/net/Uri;
    :cond_3
    iget-object v8, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    # invokes: Landroid/content/ContentProvider;->setCallingPackage(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v8, p1}, Landroid/content/ContentProvider;->access$100(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 318
    .local v4, "original":Ljava/lang/String;
    :try_start_0
    iget-object v8, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-virtual {v8, p2}, Landroid/content/ContentProvider;->applyBatch(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object v5

    .line 319
    .local v5, "results":[Landroid/content/ContentProviderResult;
    if-eqz v5, :cond_5

    .line 320
    const/4 v0, 0x0

    :goto_1
    array-length v8, v5

    if-ge v0, v8, :cond_5

    .line 321
    aget v8, v7, v0

    if-eq v8, v11, :cond_4

    .line 323
    new-instance v8, Landroid/content/ContentProviderResult;

    aget-object v9, v5, v0

    aget v10, v7, v0

    invoke-direct {v8, v9, v10}, Landroid/content/ContentProviderResult;-><init>(Landroid/content/ContentProviderResult;I)V

    aput-object v8, v5, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 320
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 329
    :cond_5
    iget-object v8, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    # invokes: Landroid/content/ContentProvider;->setCallingPackage(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v8, v4}, Landroid/content/ContentProvider;->access$100(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    return-object v5

    .end local v5    # "results":[Landroid/content/ContentProviderResult;
    :catchall_0
    move-exception v8

    iget-object v9, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    # invokes: Landroid/content/ContentProvider;->setCallingPackage(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v9, v4}, Landroid/content/ContentProvider;->access$100(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    throw v8
.end method

.method public bulkInsert(Ljava/lang/String;Landroid/net/Uri;[Landroid/content/ContentValues;)I
    .locals 3
    .param p1, "callingPkg"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "initialValues"    # [Landroid/content/ContentValues;

    .prologue
    .line 274
    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    # invokes: Landroid/content/ContentProvider;->validateIncomingUri(Landroid/net/Uri;)V
    invoke-static {v1, p2}, Landroid/content/ContentProvider;->access$000(Landroid/content/ContentProvider;Landroid/net/Uri;)V

    .line 275
    invoke-static {p2}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p2

    .line 276
    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v1}, Landroid/content/ContentProvider$Transport;->enforceWritePermission(Ljava/lang/String;Landroid/net/Uri;Landroid/os/IBinder;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 277
    const/4 v1, 0x0

    .line 283
    :goto_0
    return v1

    .line 279
    :cond_0
    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    # invokes: Landroid/content/ContentProvider;->setCallingPackage(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v1, p1}, Landroid/content/ContentProvider;->access$100(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 281
    .local v0, "original":Ljava/lang/String;
    :try_start_0
    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-virtual {v1, p2, p3}, Landroid/content/ContentProvider;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 283
    iget-object v2, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    # invokes: Landroid/content/ContentProvider;->setCallingPackage(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v2, v0}, Landroid/content/ContentProvider;->access$100(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    :catchall_0
    move-exception v1

    iget-object v2, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    # invokes: Landroid/content/ContentProvider;->setCallingPackage(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v2, v0}, Landroid/content/ContentProvider;->access$100(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    throw v1
.end method

.method public call(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 3
    .param p1, "callingPkg"    # Ljava/lang/String;
    .param p2, "method"    # Ljava/lang/String;
    .param p3, "arg"    # Ljava/lang/String;
    .param p4, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 399
    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    # invokes: Landroid/content/ContentProvider;->setCallingPackage(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v1, p1}, Landroid/content/ContentProvider;->access$100(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 401
    .local v0, "original":Ljava/lang/String;
    :try_start_0
    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-virtual {v1, p2, p3, p4}, Landroid/content/ContentProvider;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 403
    iget-object v2, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    # invokes: Landroid/content/ContentProvider;->setCallingPackage(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v2, v0}, Landroid/content/ContentProvider;->access$100(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    return-object v1

    :catchall_0
    move-exception v1

    iget-object v2, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    # invokes: Landroid/content/ContentProvider;->setCallingPackage(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v2, v0}, Landroid/content/ContentProvider;->access$100(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    throw v1
.end method

.method public canonicalize(Ljava/lang/String;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 4
    .param p1, "callingPkg"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v2, 0x0

    .line 436
    iget-object v3, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    # invokes: Landroid/content/ContentProvider;->validateIncomingUri(Landroid/net/Uri;)V
    invoke-static {v3, p2}, Landroid/content/ContentProvider;->access$000(Landroid/content/ContentProvider;Landroid/net/Uri;)V

    .line 437
    invoke-static {p2}, Landroid/content/ContentProvider;->getUserIdFromUri(Landroid/net/Uri;)I

    move-result v1

    .line 438
    .local v1, "userId":I
    invoke-static {p2}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p2

    .line 439
    invoke-direct {p0, p1, p2, v2}, Landroid/content/ContentProvider$Transport;->enforceReadPermission(Ljava/lang/String;Landroid/net/Uri;Landroid/os/IBinder;)I

    move-result v3

    if-eqz v3, :cond_0

    .line 446
    :goto_0
    return-object v2

    .line 442
    :cond_0
    iget-object v2, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    # invokes: Landroid/content/ContentProvider;->setCallingPackage(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v2, p1}, Landroid/content/ContentProvider;->access$100(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 444
    .local v0, "original":Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-virtual {v2, p2}, Landroid/content/ContentProvider;->canonicalize(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2, v1}, Landroid/content/ContentProvider;->maybeAddUserId(Landroid/net/Uri;I)Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 446
    iget-object v3, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    # invokes: Landroid/content/ContentProvider;->setCallingPackage(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v3, v0}, Landroid/content/ContentProvider;->access$100(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    :catchall_0
    move-exception v2

    iget-object v3, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    # invokes: Landroid/content/ContentProvider;->setCallingPackage(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v3, v0}, Landroid/content/ContentProvider;->access$100(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    throw v2
.end method

.method public createCancellationSignal()Landroid/os/ICancellationSignal;
    .locals 1

    .prologue
    .line 431
    invoke-static {}, Landroid/os/CancellationSignal;->createTransport()Landroid/os/ICancellationSignal;

    move-result-object v0

    return-object v0
.end method

.method public delete(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 3
    .param p1, "callingPkg"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 335
    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    # invokes: Landroid/content/ContentProvider;->validateIncomingUri(Landroid/net/Uri;)V
    invoke-static {v1, p2}, Landroid/content/ContentProvider;->access$000(Landroid/content/ContentProvider;Landroid/net/Uri;)V

    .line 336
    invoke-static {p2}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p2

    .line 337
    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v1}, Landroid/content/ContentProvider$Transport;->enforceWritePermission(Ljava/lang/String;Landroid/net/Uri;Landroid/os/IBinder;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 338
    const/4 v1, 0x0

    .line 344
    :goto_0
    return v1

    .line 340
    :cond_0
    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    # invokes: Landroid/content/ContentProvider;->setCallingPackage(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v1, p1}, Landroid/content/ContentProvider;->access$100(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 342
    .local v0, "original":Ljava/lang/String;
    :try_start_0
    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-virtual {v1, p2, p3, p4}, Landroid/content/ContentProvider;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 344
    iget-object v2, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    # invokes: Landroid/content/ContentProvider;->setCallingPackage(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v2, v0}, Landroid/content/ContentProvider;->access$100(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    :catchall_0
    move-exception v1

    iget-object v2, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    # invokes: Landroid/content/ContentProvider;->setCallingPackage(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v2, v0}, Landroid/content/ContentProvider;->access$100(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    throw v1
.end method

.method getContentProvider()Landroid/content/ContentProvider;
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    return-object v0
.end method

.method public getProviderName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 205
    invoke-virtual {p0}, Landroid/content/ContentProvider$Transport;->getContentProvider()Landroid/content/ContentProvider;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStreamTypes(Landroid/net/Uri;Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "mimeTypeFilter"    # Ljava/lang/String;

    .prologue
    .line 409
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    # invokes: Landroid/content/ContentProvider;->validateIncomingUri(Landroid/net/Uri;)V
    invoke-static {v0, p1}, Landroid/content/ContentProvider;->access$000(Landroid/content/ContentProvider;Landroid/net/Uri;)V

    .line 410
    invoke-static {p1}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p1

    .line 411
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-virtual {v0, p1, p2}, Landroid/content/ContentProvider;->getStreamTypes(Landroid/net/Uri;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 251
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    # invokes: Landroid/content/ContentProvider;->validateIncomingUri(Landroid/net/Uri;)V
    invoke-static {v0, p1}, Landroid/content/ContentProvider;->access$000(Landroid/content/ContentProvider;Landroid/net/Uri;)V

    .line 252
    invoke-static {p1}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p1

    .line 253
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-virtual {v0, p1}, Landroid/content/ContentProvider;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public insert(Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 4
    .param p1, "callingPkg"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "initialValues"    # Landroid/content/ContentValues;

    .prologue
    .line 258
    iget-object v2, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    # invokes: Landroid/content/ContentProvider;->validateIncomingUri(Landroid/net/Uri;)V
    invoke-static {v2, p2}, Landroid/content/ContentProvider;->access$000(Landroid/content/ContentProvider;Landroid/net/Uri;)V

    .line 259
    invoke-static {p2}, Landroid/content/ContentProvider;->getUserIdFromUri(Landroid/net/Uri;)I

    move-result v1

    .line 260
    .local v1, "userId":I
    invoke-static {p2}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p2

    .line 261
    const/4 v2, 0x0

    invoke-direct {p0, p1, p2, v2}, Landroid/content/ContentProvider$Transport;->enforceWritePermission(Ljava/lang/String;Landroid/net/Uri;Landroid/os/IBinder;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 262
    iget-object v2, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-virtual {v2, p2, p3}, Landroid/content/ContentProvider;->rejectInsert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v2

    .line 268
    :goto_0
    return-object v2

    .line 264
    :cond_0
    iget-object v2, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    # invokes: Landroid/content/ContentProvider;->setCallingPackage(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v2, p1}, Landroid/content/ContentProvider;->access$100(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 266
    .local v0, "original":Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-virtual {v2, p2, p3}, Landroid/content/ContentProvider;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2, v1}, Landroid/content/ContentProvider;->maybeAddUserId(Landroid/net/Uri;I)Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 268
    iget-object v3, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    # invokes: Landroid/content/ContentProvider;->setCallingPackage(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v3, v0}, Landroid/content/ContentProvider;->access$100(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    :catchall_0
    move-exception v2

    iget-object v3, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    # invokes: Landroid/content/ContentProvider;->setCallingPackage(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v3, v0}, Landroid/content/ContentProvider;->access$100(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    throw v2
.end method

.method public openAssetFile(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/content/res/AssetFileDescriptor;
    .locals 3
    .param p1, "callingPkg"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "mode"    # Ljava/lang/String;
    .param p4, "cancellationSignal"    # Landroid/os/ICancellationSignal;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 384
    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    # invokes: Landroid/content/ContentProvider;->validateIncomingUri(Landroid/net/Uri;)V
    invoke-static {v1, p2}, Landroid/content/ContentProvider;->access$000(Landroid/content/ContentProvider;Landroid/net/Uri;)V

    .line 385
    invoke-static {p2}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p2

    .line 386
    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3, v1}, Landroid/content/ContentProvider$Transport;->enforceFilePermission(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Landroid/os/IBinder;)V

    .line 387
    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    # invokes: Landroid/content/ContentProvider;->setCallingPackage(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v1, p1}, Landroid/content/ContentProvider;->access$100(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 389
    .local v0, "original":Ljava/lang/String;
    :try_start_0
    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {p4}, Landroid/os/CancellationSignal;->fromTransport(Landroid/os/ICancellationSignal;)Landroid/os/CancellationSignal;

    move-result-object v2

    invoke-virtual {v1, p2, p3, v2}, Landroid/content/ContentProvider;->openAssetFile(Landroid/net/Uri;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/content/res/AssetFileDescriptor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 392
    iget-object v2, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    # invokes: Landroid/content/ContentProvider;->setCallingPackage(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v2, v0}, Landroid/content/ContentProvider;->access$100(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    return-object v1

    :catchall_0
    move-exception v1

    iget-object v2, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    # invokes: Landroid/content/ContentProvider;->setCallingPackage(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v2, v0}, Landroid/content/ContentProvider;->access$100(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    throw v1
.end method

.method public openFile(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Landroid/os/ICancellationSignal;Landroid/os/IBinder;)Landroid/os/ParcelFileDescriptor;
    .locals 3
    .param p1, "callingPkg"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "mode"    # Ljava/lang/String;
    .param p4, "cancellationSignal"    # Landroid/os/ICancellationSignal;
    .param p5, "callerToken"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 368
    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    # invokes: Landroid/content/ContentProvider;->validateIncomingUri(Landroid/net/Uri;)V
    invoke-static {v1, p2}, Landroid/content/ContentProvider;->access$000(Landroid/content/ContentProvider;Landroid/net/Uri;)V

    .line 369
    invoke-static {p2}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p2

    .line 370
    invoke-direct {p0, p1, p2, p3, p5}, Landroid/content/ContentProvider$Transport;->enforceFilePermission(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Landroid/os/IBinder;)V

    .line 371
    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    # invokes: Landroid/content/ContentProvider;->setCallingPackage(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v1, p1}, Landroid/content/ContentProvider;->access$100(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 373
    .local v0, "original":Ljava/lang/String;
    :try_start_0
    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {p4}, Landroid/os/CancellationSignal;->fromTransport(Landroid/os/ICancellationSignal;)Landroid/os/CancellationSignal;

    move-result-object v2

    invoke-virtual {v1, p2, p3, v2}, Landroid/content/ContentProvider;->openFile(Landroid/net/Uri;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 376
    iget-object v2, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    # invokes: Landroid/content/ContentProvider;->setCallingPackage(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v2, v0}, Landroid/content/ContentProvider;->access$100(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    return-object v1

    :catchall_0
    move-exception v1

    iget-object v2, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    # invokes: Landroid/content/ContentProvider;->setCallingPackage(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v2, v0}, Landroid/content/ContentProvider;->access$100(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    throw v1
.end method

.method public openTypedAssetFile(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ICancellationSignal;)Landroid/content/res/AssetFileDescriptor;
    .locals 3
    .param p1, "callingPkg"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "mimeType"    # Ljava/lang/String;
    .param p4, "opts"    # Landroid/os/Bundle;
    .param p5, "cancellationSignal"    # Landroid/os/ICancellationSignal;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 417
    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    # invokes: Landroid/content/ContentProvider;->validateIncomingUri(Landroid/net/Uri;)V
    invoke-static {v1, p2}, Landroid/content/ContentProvider;->access$000(Landroid/content/ContentProvider;Landroid/net/Uri;)V

    .line 418
    invoke-static {p2}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p2

    .line 419
    const-string/jumbo v1, "r"

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2, v1, v2}, Landroid/content/ContentProvider$Transport;->enforceFilePermission(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Landroid/os/IBinder;)V

    .line 420
    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    # invokes: Landroid/content/ContentProvider;->setCallingPackage(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v1, p1}, Landroid/content/ContentProvider;->access$100(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 422
    .local v0, "original":Ljava/lang/String;
    :try_start_0
    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {p5}, Landroid/os/CancellationSignal;->fromTransport(Landroid/os/ICancellationSignal;)Landroid/os/CancellationSignal;

    move-result-object v2

    invoke-virtual {v1, p2, p3, p4, v2}, Landroid/content/ContentProvider;->openTypedAssetFile(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/content/res/AssetFileDescriptor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 425
    iget-object v2, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    # invokes: Landroid/content/ContentProvider;->setCallingPackage(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v2, v0}, Landroid/content/ContentProvider;->access$100(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    return-object v1

    :catchall_0
    move-exception v1

    iget-object v2, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    # invokes: Landroid/content/ContentProvider;->setCallingPackage(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v2, v0}, Landroid/content/ContentProvider;->access$100(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    throw v1
.end method

.method public query(Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;
    .locals 9
    .param p1, "callingPkg"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "projection"    # [Ljava/lang/String;
    .param p4, "selection"    # Ljava/lang/String;
    .param p5, "selectionArgs"    # [Ljava/lang/String;
    .param p6, "sortOrder"    # Ljava/lang/String;
    .param p7, "cancellationSignal"    # Landroid/os/ICancellationSignal;

    .prologue
    .line 212
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    # invokes: Landroid/content/ContentProvider;->validateIncomingUri(Landroid/net/Uri;)V
    invoke-static {v0, p2}, Landroid/content/ContentProvider;->access$000(Landroid/content/ContentProvider;Landroid/net/Uri;)V

    .line 213
    invoke-static {p2}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p2

    .line 214
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/content/ContentProvider$Transport;->enforceReadPermission(Ljava/lang/String;Landroid/net/Uri;Landroid/os/IBinder;)I

    move-result v0

    if-eqz v0, :cond_2

    .line 221
    if-eqz p3, :cond_0

    .line 222
    new-instance v0, Landroid/database/MatrixCursor;

    const/4 v1, 0x0

    invoke-direct {v0, p3, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 245
    :goto_0
    return-object v0

    .line 229
    :cond_0
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static/range {p7 .. p7}, Landroid/os/CancellationSignal;->fromTransport(Landroid/os/ICancellationSignal;)Landroid/os/CancellationSignal;

    move-result-object v6

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-virtual/range {v0 .. v6}, Landroid/content/ContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v7

    .line 232
    .local v7, "cursor":Landroid/database/Cursor;
    if-nez v7, :cond_1

    .line 233
    const/4 v0, 0x0

    goto :goto_0

    .line 237
    :cond_1
    new-instance v0, Landroid/database/MatrixCursor;

    invoke-interface {v7}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    goto :goto_0

    .line 239
    .end local v7    # "cursor":Landroid/database/Cursor;
    :cond_2
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    # invokes: Landroid/content/ContentProvider;->setCallingPackage(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v0, p1}, Landroid/content/ContentProvider;->access$100(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 241
    .local v8, "original":Ljava/lang/String;
    :try_start_0
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static/range {p7 .. p7}, Landroid/os/CancellationSignal;->fromTransport(Landroid/os/ICancellationSignal;)Landroid/os/CancellationSignal;

    move-result-object v6

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-virtual/range {v0 .. v6}, Landroid/content/ContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 245
    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    # invokes: Landroid/content/ContentProvider;->setCallingPackage(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v1, v8}, Landroid/content/ContentProvider;->access$100(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    # invokes: Landroid/content/ContentProvider;->setCallingPackage(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v1, v8}, Landroid/content/ContentProvider;->access$100(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    throw v0
.end method

.method public uncanonicalize(Ljava/lang/String;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 4
    .param p1, "callingPkg"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v2, 0x0

    .line 452
    iget-object v3, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    # invokes: Landroid/content/ContentProvider;->validateIncomingUri(Landroid/net/Uri;)V
    invoke-static {v3, p2}, Landroid/content/ContentProvider;->access$000(Landroid/content/ContentProvider;Landroid/net/Uri;)V

    .line 453
    invoke-static {p2}, Landroid/content/ContentProvider;->getUserIdFromUri(Landroid/net/Uri;)I

    move-result v1

    .line 454
    .local v1, "userId":I
    invoke-static {p2}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p2

    .line 455
    invoke-direct {p0, p1, p2, v2}, Landroid/content/ContentProvider$Transport;->enforceReadPermission(Ljava/lang/String;Landroid/net/Uri;Landroid/os/IBinder;)I

    move-result v3

    if-eqz v3, :cond_0

    .line 462
    :goto_0
    return-object v2

    .line 458
    :cond_0
    iget-object v2, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    # invokes: Landroid/content/ContentProvider;->setCallingPackage(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v2, p1}, Landroid/content/ContentProvider;->access$100(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 460
    .local v0, "original":Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-virtual {v2, p2}, Landroid/content/ContentProvider;->uncanonicalize(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2, v1}, Landroid/content/ContentProvider;->maybeAddUserId(Landroid/net/Uri;I)Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 462
    iget-object v3, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    # invokes: Landroid/content/ContentProvider;->setCallingPackage(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v3, v0}, Landroid/content/ContentProvider;->access$100(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    :catchall_0
    move-exception v2

    iget-object v3, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    # invokes: Landroid/content/ContentProvider;->setCallingPackage(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v3, v0}, Landroid/content/ContentProvider;->access$100(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    throw v2
.end method

.method public update(Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 3
    .param p1, "callingPkg"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "values"    # Landroid/content/ContentValues;
    .param p4, "selection"    # Ljava/lang/String;
    .param p5, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 351
    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    # invokes: Landroid/content/ContentProvider;->validateIncomingUri(Landroid/net/Uri;)V
    invoke-static {v1, p2}, Landroid/content/ContentProvider;->access$000(Landroid/content/ContentProvider;Landroid/net/Uri;)V

    .line 352
    invoke-static {p2}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p2

    .line 353
    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v1}, Landroid/content/ContentProvider$Transport;->enforceWritePermission(Ljava/lang/String;Landroid/net/Uri;Landroid/os/IBinder;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 354
    const/4 v1, 0x0

    .line 360
    :goto_0
    return v1

    .line 356
    :cond_0
    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    # invokes: Landroid/content/ContentProvider;->setCallingPackage(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v1, p1}, Landroid/content/ContentProvider;->access$100(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 358
    .local v0, "original":Ljava/lang/String;
    :try_start_0
    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-virtual {v1, p2, p3, p4, p5}, Landroid/content/ContentProvider;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 360
    iget-object v2, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    # invokes: Landroid/content/ContentProvider;->setCallingPackage(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v2, v0}, Landroid/content/ContentProvider;->access$100(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    :catchall_0
    move-exception v1

    iget-object v2, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    # invokes: Landroid/content/ContentProvider;->setCallingPackage(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v2, v0}, Landroid/content/ContentProvider;->access$100(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    throw v1
.end method
