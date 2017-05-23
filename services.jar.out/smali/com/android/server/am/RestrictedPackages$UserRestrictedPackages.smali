.class final Lcom/android/server/am/RestrictedPackages$UserRestrictedPackages;
.super Ljava/lang/Object;
.source "RestrictedPackages.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/RestrictedPackages;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "UserRestrictedPackages"
.end annotation


# instance fields
.field private final mFile:Landroid/util/AtomicFile;

.field private mPackages:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/app/RestrictedPackageInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(I)V
    .locals 3
    .param p1, "userId"    # I

    .prologue
    .line 320
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 317
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/RestrictedPackages$UserRestrictedPackages;->mPackages:Ljava/util/HashMap;

    .line 321
    new-instance v0, Ljava/io/File;

    invoke-static {p1}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v1

    const-string v2, "restricted-packages.xml"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 322
    .local v0, "path":Ljava/io/File;
    new-instance v1, Landroid/util/AtomicFile;

    invoke-direct {v1, v0}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object v1, p0, Lcom/android/server/am/RestrictedPackages$UserRestrictedPackages;->mFile:Landroid/util/AtomicFile;

    .line 323
    invoke-direct {p0}, Lcom/android/server/am/RestrictedPackages$UserRestrictedPackages;->readSettings()V

    .line 324
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/am/RestrictedPackages$UserRestrictedPackages;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/RestrictedPackages$UserRestrictedPackages;

    .prologue
    .line 315
    iget-object v0, p0, Lcom/android/server/am/RestrictedPackages$UserRestrictedPackages;->mPackages:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/am/RestrictedPackages$UserRestrictedPackages;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/RestrictedPackages$UserRestrictedPackages;

    .prologue
    .line 315
    invoke-direct {p0}, Lcom/android/server/am/RestrictedPackages$UserRestrictedPackages;->writeSettings()V

    return-void
.end method

.method private readSettings()V
    .locals 23

    .prologue
    .line 327
    const-string v19, "RestrictedPackages"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "read settings "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/RestrictedPackages$UserRestrictedPackages;->mFile:Landroid/util/AtomicFile;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    .line 332
    .local v13, "pkgs":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/app/RestrictedPackageInfo;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/RestrictedPackages$UserRestrictedPackages;->mFile:Landroid/util/AtomicFile;

    move-object/from16 v20, v0

    monitor-enter v20

    .line 335
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/RestrictedPackages$UserRestrictedPackages;->mFile:Landroid/util/AtomicFile;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-result-object v17

    .line 341
    .local v17, "stream":Ljava/io/FileInputStream;
    const/4 v4, 0x0

    .line 342
    .local v4, "docBuilderFactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    const/4 v3, 0x0

    .line 343
    .local v3, "docBuilder":Ljavax/xml/parsers/DocumentBuilder;
    const/4 v2, 0x0

    .line 346
    .local v2, "doc":Lorg/w3c/dom/Document;
    :try_start_1
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v4

    .line 347
    invoke-virtual {v4}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v3

    .line 348
    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v2

    .line 349
    invoke-interface {v2}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v15

    .line 350
    .local v15, "root":Lorg/w3c/dom/Element;
    const-string v19, "package"

    move-object/from16 v0, v19

    invoke-interface {v15, v0}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v9

    .line 351
    .local v9, "nodeList":Lorg/w3c/dom/NodeList;
    const/4 v8, 0x0

    .line 352
    .local v8, "node":Lorg/w3c/dom/Node;
    const/4 v10, 0x0

    .line 353
    .local v10, "nodeMap":Lorg/w3c/dom/NamedNodeMap;
    const/4 v11, 0x0

    .line 354
    .local v11, "packageName":Ljava/lang/String;
    const/16 v18, 0x0

    .line 355
    .local v18, "uid":I
    const/4 v14, 0x0

    .line 356
    .local v14, "restrictions":I
    const/16 v16, 0x0

    .line 357
    .local v16, "state":Ljava/lang/String;
    const/4 v6, 0x0

    .line 358
    .local v6, "force":Ljava/lang/String;
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    invoke-interface {v9}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v19

    move/from16 v0, v19

    if-ge v7, v0, :cond_1

    .line 359
    invoke-interface {v9, v7}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v8

    .line 360
    invoke-interface {v8}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v19

    const-string v21, "package"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_0

    .line 361
    invoke-interface {v8}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v10

    .line 362
    const-string v19, "name"

    move-object/from16 v0, v19

    invoke-interface {v10, v0}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v11

    .line 364
    :try_start_2
    const-string v19, "uid"

    move-object/from16 v0, v19

    invoke-interface {v10, v0}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Lorg/xml/sax/SAXException; {:try_start_2 .. :try_end_2} :catch_7
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v18

    .line 369
    :goto_1
    :try_start_3
    const-string v19, "restrictions"

    move-object/from16 v0, v19

    invoke-interface {v10, v0}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Lorg/xml/sax/SAXException; {:try_start_3 .. :try_end_3} :catch_7
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result v14

    .line 373
    :goto_2
    :try_start_4
    const-string v19, "state"

    move-object/from16 v0, v19

    invoke-interface {v10, v0}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v16

    .line 374
    const-string v19, "force_state"

    move-object/from16 v0, v19

    invoke-interface {v10, v0}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v6

    .line 375
    new-instance v12, Landroid/app/RestrictedPackageInfo;

    move/from16 v0, v18

    invoke-direct {v12, v11, v0, v14}, Landroid/app/RestrictedPackageInfo;-><init>(Ljava/lang/String;II)V

    .line 377
    .local v12, "pi":Landroid/app/RestrictedPackageInfo;
    const/16 v19, 0x1

    move/from16 v0, v19

    iput-boolean v0, v12, Landroid/app/RestrictedPackageInfo;->mStopped:Z

    .line 378
    const-string v19, "force"

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    move/from16 v0, v19

    iput-boolean v0, v12, Landroid/app/RestrictedPackageInfo;->mForceCleaned:Z

    .line 379
    invoke-virtual {v13, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Lorg/xml/sax/SAXException; {:try_start_4 .. :try_end_4} :catch_7
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 358
    .end local v12    # "pi":Landroid/app/RestrictedPackageInfo;
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 336
    .end local v2    # "doc":Lorg/w3c/dom/Document;
    .end local v3    # "docBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v4    # "docBuilderFactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v6    # "force":Ljava/lang/String;
    .end local v7    # "i":I
    .end local v8    # "node":Lorg/w3c/dom/Node;
    .end local v9    # "nodeList":Lorg/w3c/dom/NodeList;
    .end local v10    # "nodeMap":Lorg/w3c/dom/NamedNodeMap;
    .end local v11    # "packageName":Ljava/lang/String;
    .end local v14    # "restrictions":I
    .end local v15    # "root":Lorg/w3c/dom/Element;
    .end local v16    # "state":Ljava/lang/String;
    .end local v17    # "stream":Ljava/io/FileInputStream;
    .end local v18    # "uid":I
    :catch_0
    move-exception v5

    .line 337
    .local v5, "e":Ljava/io/FileNotFoundException;
    :try_start_5
    const-string v19, "RestrictedPackages"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "No existing app ops "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/RestrictedPackages$UserRestrictedPackages;->mFile:Landroid/util/AtomicFile;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "; starting empty"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    monitor-exit v20
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 399
    .end local v5    # "e":Ljava/io/FileNotFoundException;
    :goto_3
    return-void

    .line 365
    .restart local v2    # "doc":Lorg/w3c/dom/Document;
    .restart local v3    # "docBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v4    # "docBuilderFactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v6    # "force":Ljava/lang/String;
    .restart local v7    # "i":I
    .restart local v8    # "node":Lorg/w3c/dom/Node;
    .restart local v9    # "nodeList":Lorg/w3c/dom/NodeList;
    .restart local v10    # "nodeMap":Lorg/w3c/dom/NamedNodeMap;
    .restart local v11    # "packageName":Ljava/lang/String;
    .restart local v14    # "restrictions":I
    .restart local v15    # "root":Lorg/w3c/dom/Element;
    .restart local v16    # "state":Ljava/lang/String;
    .restart local v17    # "stream":Ljava/io/FileInputStream;
    .restart local v18    # "uid":I
    :catch_1
    move-exception v5

    .line 366
    .local v5, "e":Ljava/lang/Exception;
    const/16 v18, 0x0

    goto :goto_1

    .line 370
    .end local v5    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v5

    .line 371
    .restart local v5    # "e":Ljava/lang/Exception;
    const/4 v14, 0x0

    goto :goto_2

    .line 390
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_1
    :try_start_6
    invoke-virtual/range {v17 .. v17}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_9
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 394
    .end local v6    # "force":Ljava/lang/String;
    .end local v7    # "i":I
    .end local v8    # "node":Lorg/w3c/dom/Node;
    .end local v9    # "nodeList":Lorg/w3c/dom/NodeList;
    .end local v10    # "nodeMap":Lorg/w3c/dom/NamedNodeMap;
    .end local v11    # "packageName":Ljava/lang/String;
    .end local v14    # "restrictions":I
    .end local v15    # "root":Lorg/w3c/dom/Element;
    .end local v16    # "state":Ljava/lang/String;
    .end local v18    # "uid":I
    :goto_4
    :try_start_7
    monitor-exit v20
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 396
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/RestrictedPackages$UserRestrictedPackages;->mPackages:Ljava/util/HashMap;

    move-object/from16 v20, v0

    monitor-enter v20

    .line 397
    :try_start_8
    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/server/am/RestrictedPackages$UserRestrictedPackages;->mPackages:Ljava/util/HashMap;

    .line 398
    monitor-exit v20

    goto :goto_3

    :catchall_0
    move-exception v19

    monitor-exit v20
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    throw v19

    .line 382
    :catch_3
    move-exception v5

    .line 383
    .local v5, "e":Ljava/io/IOException;
    :try_start_9
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 390
    :try_start_a
    invoke-virtual/range {v17 .. v17}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    goto :goto_4

    .line 391
    :catch_4
    move-exception v19

    goto :goto_4

    .line 384
    .end local v5    # "e":Ljava/io/IOException;
    :catch_5
    move-exception v5

    .line 385
    .local v5, "e":Ljavax/xml/parsers/ParserConfigurationException;
    :try_start_b
    invoke-virtual {v5}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 390
    :try_start_c
    invoke-virtual/range {v17 .. v17}, Ljava/io/FileInputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_6
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    goto :goto_4

    .line 391
    :catch_6
    move-exception v19

    goto :goto_4

    .line 386
    .end local v5    # "e":Ljavax/xml/parsers/ParserConfigurationException;
    :catch_7
    move-exception v5

    .line 387
    .local v5, "e":Lorg/xml/sax/SAXException;
    :try_start_d
    invoke-virtual {v5}, Lorg/xml/sax/SAXException;->printStackTrace()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .line 390
    :try_start_e
    invoke-virtual/range {v17 .. v17}, Ljava/io/FileInputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_8
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    goto :goto_4

    .line 391
    :catch_8
    move-exception v19

    goto :goto_4

    .line 389
    .end local v5    # "e":Lorg/xml/sax/SAXException;
    :catchall_1
    move-exception v19

    .line 390
    :try_start_f
    invoke-virtual/range {v17 .. v17}, Ljava/io/FileInputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_a
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    .line 392
    :goto_5
    :try_start_10
    throw v19

    .line 394
    .end local v2    # "doc":Lorg/w3c/dom/Document;
    .end local v3    # "docBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v4    # "docBuilderFactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v17    # "stream":Ljava/io/FileInputStream;
    :catchall_2
    move-exception v19

    monitor-exit v20
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    throw v19

    .line 391
    .restart local v2    # "doc":Lorg/w3c/dom/Document;
    .restart local v3    # "docBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v4    # "docBuilderFactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v6    # "force":Ljava/lang/String;
    .restart local v7    # "i":I
    .restart local v8    # "node":Lorg/w3c/dom/Node;
    .restart local v9    # "nodeList":Lorg/w3c/dom/NodeList;
    .restart local v10    # "nodeMap":Lorg/w3c/dom/NamedNodeMap;
    .restart local v11    # "packageName":Ljava/lang/String;
    .restart local v14    # "restrictions":I
    .restart local v15    # "root":Lorg/w3c/dom/Element;
    .restart local v16    # "state":Ljava/lang/String;
    .restart local v17    # "stream":Ljava/io/FileInputStream;
    .restart local v18    # "uid":I
    :catch_9
    move-exception v19

    goto :goto_4

    .end local v6    # "force":Ljava/lang/String;
    .end local v7    # "i":I
    .end local v8    # "node":Lorg/w3c/dom/Node;
    .end local v9    # "nodeList":Lorg/w3c/dom/NodeList;
    .end local v10    # "nodeMap":Lorg/w3c/dom/NamedNodeMap;
    .end local v11    # "packageName":Ljava/lang/String;
    .end local v14    # "restrictions":I
    .end local v15    # "root":Lorg/w3c/dom/Element;
    .end local v16    # "state":Ljava/lang/String;
    .end local v18    # "uid":I
    :catch_a
    move-exception v21

    goto :goto_5
.end method

.method private writeSettings()V
    .locals 10

    .prologue
    .line 402
    const-string v6, "RestrictedPackages"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "write settings "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/am/RestrictedPackages$UserRestrictedPackages;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {v8}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 407
    .local v2, "pkgs":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/app/RestrictedPackageInfo;>;"
    iget-object v7, p0, Lcom/android/server/am/RestrictedPackages$UserRestrictedPackages;->mPackages:Ljava/util/HashMap;

    monitor-enter v7

    .line 408
    :try_start_0
    iget-object v6, p0, Lcom/android/server/am/RestrictedPackages$UserRestrictedPackages;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/RestrictedPackageInfo;

    .line 409
    .local v3, "ps":Landroid/app/RestrictedPackageInfo;
    iget-object v6, v3, Landroid/app/RestrictedPackageInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v3}, Landroid/app/RestrictedPackageInfo;->clone()Landroid/app/RestrictedPackageInfo;

    move-result-object v8

    invoke-virtual {v2, v6, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 411
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "ps":Landroid/app/RestrictedPackageInfo;
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 413
    iget-object v7, p0, Lcom/android/server/am/RestrictedPackages$UserRestrictedPackages;->mFile:Landroid/util/AtomicFile;

    monitor-enter v7

    .line 416
    :try_start_2
    iget-object v6, p0, Lcom/android/server/am/RestrictedPackages$UserRestrictedPackages;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {v6}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v5

    .line 423
    .local v5, "stream":Ljava/io/FileOutputStream;
    :try_start_3
    new-instance v4, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v4}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 424
    .local v4, "serializer":Lorg/xmlpull/v1/XmlSerializer;
    const-string v6, "utf-8"

    invoke-interface {v4, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 425
    const/4 v6, 0x0

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-interface {v4, v6, v8}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 426
    const/4 v6, 0x0

    const-string v8, "restricted_packages"

    invoke-interface {v4, v6, v8}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 428
    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/RestrictedPackageInfo;

    .line 429
    .restart local v3    # "ps":Landroid/app/RestrictedPackageInfo;
    const/4 v6, 0x0

    const-string v8, "package"

    invoke-interface {v4, v6, v8}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 430
    const/4 v6, 0x0

    const-string v8, "name"

    iget-object v9, v3, Landroid/app/RestrictedPackageInfo;->mPackageName:Ljava/lang/String;

    invoke-interface {v4, v6, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 431
    const/4 v6, 0x0

    const-string v8, "uid"

    iget v9, v3, Landroid/app/RestrictedPackageInfo;->mUid:I

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v4, v6, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 432
    const/4 v6, 0x0

    const-string v8, "restrictions"

    iget v9, v3, Landroid/app/RestrictedPackageInfo;->mRestrictions:I

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v4, v6, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 433
    const/4 v8, 0x0

    const-string v9, "state"

    iget-boolean v6, v3, Landroid/app/RestrictedPackageInfo;->mStopped:Z

    if-eqz v6, :cond_1

    const-string v6, "stopped"

    :goto_2
    invoke-interface {v4, v8, v9, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 434
    const/4 v8, 0x0

    const-string v9, "force_state"

    iget-boolean v6, v3, Landroid/app/RestrictedPackageInfo;->mForceCleaned:Z

    if-eqz v6, :cond_2

    const-string v6, "force"

    :goto_3
    invoke-interface {v4, v8, v9, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 435
    const/4 v6, 0x0

    const-string v8, "package"

    invoke-interface {v4, v6, v8}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    .line 440
    .end local v3    # "ps":Landroid/app/RestrictedPackageInfo;
    .end local v4    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    :catch_0
    move-exception v0

    .line 441
    .local v0, "e":Ljava/io/IOException;
    :try_start_4
    const-string v6, "RestrictedPackages"

    const-string v8, "Failed to write state, restoring backup."

    invoke-static {v6, v8, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 442
    iget-object v6, p0, Lcom/android/server/am/RestrictedPackages$UserRestrictedPackages;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {v6, v5}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 444
    .end local v0    # "e":Ljava/io/IOException;
    :goto_4
    monitor-exit v7

    .line 445
    .end local v5    # "stream":Ljava/io/FileOutputStream;
    :goto_5
    return-void

    .line 417
    :catch_1
    move-exception v0

    .line 418
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v6, "RestrictedPackages"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to write state: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    monitor-exit v7

    goto :goto_5

    .line 444
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v6

    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v6

    .line 433
    .restart local v3    # "ps":Landroid/app/RestrictedPackageInfo;
    .restart local v4    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    .restart local v5    # "stream":Ljava/io/FileOutputStream;
    :cond_1
    :try_start_5
    const-string v6, "not_stopped"

    goto :goto_2

    .line 434
    :cond_2
    const-string v6, "not_force"

    goto :goto_3

    .line 437
    .end local v3    # "ps":Landroid/app/RestrictedPackageInfo;
    :cond_3
    const/4 v6, 0x0

    const-string v8, "restricted_packages"

    invoke-interface {v4, v6, v8}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 438
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 439
    iget-object v6, p0, Lcom/android/server/am/RestrictedPackages$UserRestrictedPackages;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {v6, v5}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_4
.end method
