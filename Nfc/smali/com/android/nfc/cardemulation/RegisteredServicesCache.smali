.class public Lcom/android/nfc/cardemulation/RegisteredServicesCache;
.super Ljava/lang/Object;
.source "RegisteredServicesCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;,
        Lcom/android/nfc/cardemulation/RegisteredServicesCache$DynamicAids;,
        Lcom/android/nfc/cardemulation/RegisteredServicesCache$Callback;
    }
.end annotation


# static fields
.field static final DEBUG:Z = true

.field static final TAG:Ljava/lang/String; = "RegisteredServicesCache"

.field static final XML_INDENT_OUTPUT_FEATURE:Ljava/lang/String; = "http://xmlpull.org/v1/doc/features.html#indent-output"


# instance fields
.field final mCallback:Lcom/android/nfc/cardemulation/RegisteredServicesCache$Callback;

.field final mContext:Landroid/content/Context;

.field final mDynamicAidsFile:Landroid/util/AtomicFile;

.field final mLock:Ljava/lang/Object;

.field final mReceiver:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Landroid/content/BroadcastReceiver;",
            ">;"
        }
    .end annotation
.end field

.field final mUserServices:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/nfc/cardemulation/RegisteredServicesCache$Callback;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/android/nfc/cardemulation/RegisteredServicesCache$Callback;

    .prologue
    const/4 v4, 0x0

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->mLock:Ljava/lang/Object;

    .line 80
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->mUserServices:Landroid/util/SparseArray;

    .line 117
    iput-object p1, p0, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->mContext:Landroid/content/Context;

    .line 118
    iput-object p2, p0, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->mCallback:Lcom/android/nfc/cardemulation/RegisteredServicesCache$Callback;

    .line 120
    new-instance v12, Lcom/android/nfc/cardemulation/RegisteredServicesCache$1;

    invoke-direct {v12, p0}, Lcom/android/nfc/cardemulation/RegisteredServicesCache$1;-><init>(Lcom/android/nfc/cardemulation/RegisteredServicesCache;)V

    .line 143
    .local v12, "receiver":Landroid/content/BroadcastReceiver;
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0, v12}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->mReceiver:Ljava/util/concurrent/atomic/AtomicReference;

    .line 145
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 146
    .local v3, "intentFilter":Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 147
    const-string v0, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 148
    const-string v0, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 149
    const-string v0, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 150
    const-string v0, "android.intent.action.PACKAGE_FIRST_LAUNCH"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 151
    const-string v0, "android.intent.action.PACKAGE_RESTARTED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 152
    const-string v0, "package"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 153
    iget-object v0, p0, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->mReceiver:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 156
    new-instance v8, Landroid/content/IntentFilter;

    invoke-direct {v8}, Landroid/content/IntentFilter;-><init>()V

    .line 157
    .local v8, "sdFilter":Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 158
    const-string v0, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 159
    iget-object v5, p0, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->mReceiver:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/BroadcastReceiver;

    sget-object v7, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v9, v4

    move-object v10, v4

    invoke-virtual/range {v5 .. v10}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 161
    iget-object v0, p0, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v11

    .line 162
    .local v11, "dataDir":Ljava/io/File;
    new-instance v0, Landroid/util/AtomicFile;

    new-instance v1, Ljava/io/File;

    const-string v2, "dynamic_aids.xml"

    invoke-direct {v1, v11, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->mDynamicAidsFile:Landroid/util/AtomicFile;

    .line 163
    return-void
.end method

.method private findOrCreateUserLocked(I)Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;
    .locals 2
    .param p1, "userId"    # I

    .prologue
    .line 108
    iget-object v1, p0, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->mUserServices:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;

    .line 109
    .local v0, "services":Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;
    if-nez v0, :cond_0

    .line 110
    new-instance v0, Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;

    .end local v0    # "services":Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;
    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;-><init>(Lcom/android/nfc/cardemulation/RegisteredServicesCache$1;)V

    .line 111
    .restart local v0    # "services":Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;
    iget-object v1, p0, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->mUserServices:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 113
    :cond_0
    return-object v0
.end method

.method private readDynamicAidsLocked()V
    .locals 20

    .prologue
    .line 329
    const/4 v9, 0x0

    .line 331
    .local v9, "fis":Ljava/io/FileInputStream;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->mDynamicAidsFile:Landroid/util/AtomicFile;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->exists()Z

    move-result v18

    if-nez v18, :cond_1

    .line 332
    const-string v18, "RegisteredServicesCache"

    const-string v19, "Dynamic AIDs file does not exist."

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 401
    if-eqz v9, :cond_0

    .line 403
    :try_start_1
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    .line 408
    :cond_0
    :goto_0
    return-void

    .line 335
    :cond_1
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->mDynamicAidsFile:Landroid/util/AtomicFile;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v9

    .line 336
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v13

    .line 337
    .local v13, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/16 v18, 0x0

    move-object/from16 v0, v18

    invoke-interface {v13, v9, v0}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 338
    invoke-interface {v13}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v8

    .line 339
    .local v8, "eventType":I
    :goto_1
    const/16 v18, 0x2

    move/from16 v0, v18

    if-eq v8, v0, :cond_2

    const/16 v18, 0x1

    move/from16 v0, v18

    if-eq v8, v0, :cond_2

    .line 341
    invoke-interface {v13}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v8

    goto :goto_1

    .line 343
    :cond_2
    invoke-interface {v13}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v15

    .line 344
    .local v15, "tagName":Ljava/lang/String;
    const-string v18, "services"

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_c

    .line 345
    const/4 v12, 0x0

    .line 346
    .local v12, "inService":Z
    const/4 v3, 0x0

    .line 347
    .local v3, "currentComponent":Landroid/content/ComponentName;
    const/4 v5, -0x1

    .line 348
    .local v5, "currentUid":I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 349
    .local v4, "currentGroups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/AidGroup;>;"
    :goto_2
    const/16 v18, 0x1

    move/from16 v0, v18

    if-eq v8, v0, :cond_c

    .line 350
    invoke-interface {v13}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v15

    .line 351
    const/16 v18, 0x2

    move/from16 v0, v18

    if-ne v8, v0, :cond_9

    .line 352
    const-string v18, "service"

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_4

    invoke-interface {v13}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v18

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_4

    .line 353
    const/16 v18, 0x0

    const-string v19, "component"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v13, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 354
    .local v2, "compString":Ljava/lang/String;
    const/16 v18, 0x0

    const-string v19, "uid"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v13, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 355
    .local v16, "uidString":Ljava/lang/String;
    if-eqz v2, :cond_3

    if-nez v16, :cond_6

    .line 356
    :cond_3
    const-string v18, "RegisteredServicesCache"

    const-string v19, "Invalid service attributes"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    .end local v2    # "compString":Ljava/lang/String;
    .end local v16    # "uidString":Ljava/lang/String;
    :cond_4
    :goto_3
    const-string v18, "aid-group"

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_5

    invoke-interface {v13}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v18

    const/16 v19, 0x3

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_5

    if-eqz v12, :cond_5

    .line 368
    invoke-static {v13}, Landroid/nfc/cardemulation/AidGroup;->createFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/nfc/cardemulation/AidGroup;

    move-result-object v10

    .line 369
    .local v10, "group":Landroid/nfc/cardemulation/AidGroup;
    if-eqz v10, :cond_7

    .line 370
    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 394
    .end local v10    # "group":Landroid/nfc/cardemulation/AidGroup;
    :cond_5
    :goto_4
    invoke-interface {v13}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v8

    goto :goto_2

    .line 359
    .restart local v2    # "compString":Ljava/lang/String;
    .restart local v16    # "uidString":Ljava/lang/String;
    :cond_6
    :try_start_3
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 360
    invoke-static {v2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v3

    .line 361
    const/4 v12, 0x1

    goto :goto_3

    .line 362
    :catch_0
    move-exception v7

    .line 363
    .local v7, "e":Ljava/lang/NumberFormatException;
    :try_start_4
    const-string v18, "RegisteredServicesCache"

    const-string v19, "Could not parse service uid"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_3

    .line 397
    .end local v2    # "compString":Ljava/lang/String;
    .end local v3    # "currentComponent":Landroid/content/ComponentName;
    .end local v4    # "currentGroups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/AidGroup;>;"
    .end local v5    # "currentUid":I
    .end local v7    # "e":Ljava/lang/NumberFormatException;
    .end local v8    # "eventType":I
    .end local v12    # "inService":Z
    .end local v13    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v15    # "tagName":Ljava/lang/String;
    .end local v16    # "uidString":Ljava/lang/String;
    :catch_1
    move-exception v7

    .line 398
    .local v7, "e":Ljava/lang/Exception;
    :try_start_5
    const-string v18, "RegisteredServicesCache"

    const-string v19, "Could not parse dynamic AIDs file, trashing."

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->mDynamicAidsFile:Landroid/util/AtomicFile;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/util/AtomicFile;->delete()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 401
    if-eqz v9, :cond_0

    .line 403
    :try_start_6
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto/16 :goto_0

    .line 404
    :catch_2
    move-exception v18

    goto/16 :goto_0

    .line 372
    .end local v7    # "e":Ljava/lang/Exception;
    .restart local v3    # "currentComponent":Landroid/content/ComponentName;
    .restart local v4    # "currentGroups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/AidGroup;>;"
    .restart local v5    # "currentUid":I
    .restart local v8    # "eventType":I
    .restart local v10    # "group":Landroid/nfc/cardemulation/AidGroup;
    .restart local v12    # "inService":Z
    .restart local v13    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v15    # "tagName":Ljava/lang/String;
    :cond_7
    :try_start_7
    const-string v18, "RegisteredServicesCache"

    const-string v19, "Could not parse AID group."

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_4

    .line 401
    .end local v3    # "currentComponent":Landroid/content/ComponentName;
    .end local v4    # "currentGroups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/AidGroup;>;"
    .end local v5    # "currentUid":I
    .end local v8    # "eventType":I
    .end local v10    # "group":Landroid/nfc/cardemulation/AidGroup;
    .end local v12    # "inService":Z
    .end local v13    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v15    # "tagName":Ljava/lang/String;
    :catchall_0
    move-exception v18

    if-eqz v9, :cond_8

    .line 403
    :try_start_8
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 405
    :cond_8
    :goto_5
    throw v18

    .line 375
    .restart local v3    # "currentComponent":Landroid/content/ComponentName;
    .restart local v4    # "currentGroups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/AidGroup;>;"
    .restart local v5    # "currentUid":I
    .restart local v8    # "eventType":I
    .restart local v12    # "inService":Z
    .restart local v13    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v15    # "tagName":Ljava/lang/String;
    :cond_9
    const/16 v18, 0x3

    move/from16 v0, v18

    if-ne v8, v0, :cond_5

    .line 376
    :try_start_9
    const-string v18, "service"

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_5

    .line 378
    if-eqz v3, :cond_b

    if-ltz v5, :cond_b

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v18

    if-lez v18, :cond_b

    .line 380
    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v17

    .line 381
    .local v17, "userId":I
    new-instance v6, Lcom/android/nfc/cardemulation/RegisteredServicesCache$DynamicAids;

    invoke-direct {v6, v5}, Lcom/android/nfc/cardemulation/RegisteredServicesCache$DynamicAids;-><init>(I)V

    .line 382
    .local v6, "dynAids":Lcom/android/nfc/cardemulation/RegisteredServicesCache$DynamicAids;
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "i$":Ljava/util/Iterator;
    :goto_6
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_a

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/nfc/cardemulation/AidGroup;

    .line 383
    .restart local v10    # "group":Landroid/nfc/cardemulation/AidGroup;
    iget-object v0, v6, Lcom/android/nfc/cardemulation/RegisteredServicesCache$DynamicAids;->aidGroups:Ljava/util/HashMap;

    move-object/from16 v18, v0

    invoke-virtual {v10}, Landroid/nfc/cardemulation/AidGroup;->getCategory()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    .line 385
    .end local v10    # "group":Landroid/nfc/cardemulation/AidGroup;
    :cond_a
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->findOrCreateUserLocked(I)Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;

    move-result-object v14

    .line 386
    .local v14, "services":Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;
    iget-object v0, v14, Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;->dynamicAids:Ljava/util/HashMap;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 388
    .end local v6    # "dynAids":Lcom/android/nfc/cardemulation/RegisteredServicesCache$DynamicAids;
    .end local v11    # "i$":Ljava/util/Iterator;
    .end local v14    # "services":Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;
    .end local v17    # "userId":I
    :cond_b
    const/4 v5, -0x1

    .line 389
    const/4 v3, 0x0

    .line 390
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 391
    const/4 v12, 0x0

    goto/16 :goto_4

    .line 401
    .end local v3    # "currentComponent":Landroid/content/ComponentName;
    .end local v4    # "currentGroups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/AidGroup;>;"
    .end local v5    # "currentUid":I
    .end local v12    # "inService":Z
    :cond_c
    if-eqz v9, :cond_0

    .line 403
    :try_start_a
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3

    goto/16 :goto_0

    .line 404
    :catch_3
    move-exception v18

    goto/16 :goto_0

    .end local v8    # "eventType":I
    .end local v13    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v15    # "tagName":Ljava/lang/String;
    :catch_4
    move-exception v18

    goto/16 :goto_0

    :catch_5
    move-exception v19

    goto :goto_5
.end method

.method private writeDynamicAidsLocked()Z
    .locals 13

    .prologue
    const/4 v10, 0x1

    .line 411
    const/4 v1, 0x0

    .line 413
    .local v1, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    iget-object v9, p0, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->mDynamicAidsFile:Landroid/util/AtomicFile;

    invoke-virtual {v9}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v1

    .line 414
    new-instance v6, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v6}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 415
    .local v6, "out":Lorg/xmlpull/v1/XmlSerializer;
    const-string v9, "utf-8"

    invoke-interface {v6, v1, v9}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 416
    const/4 v9, 0x0

    const/4 v11, 0x1

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-interface {v6, v9, v11}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 417
    const-string v9, "http://xmlpull.org/v1/doc/features.html#indent-output"

    const/4 v11, 0x1

    invoke-interface {v6, v9, v11}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 418
    const/4 v9, 0x0

    const-string v11, "services"

    invoke-interface {v6, v9, v11}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 419
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v9, p0, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->mUserServices:Landroid/util/SparseArray;

    invoke-virtual {v9}, Landroid/util/SparseArray;->size()I

    move-result v9

    if-ge v3, v9, :cond_3

    .line 420
    iget-object v9, p0, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->mUserServices:Landroid/util/SparseArray;

    invoke-virtual {v9, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;

    .line 421
    .local v8, "user":Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;
    iget-object v9, v8, Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;->dynamicAids:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 422
    .local v7, "service":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/content/ComponentName;Lcom/android/nfc/cardemulation/RegisteredServicesCache$DynamicAids;>;"
    const/4 v9, 0x0

    const-string v11, "service"

    invoke-interface {v6, v9, v11}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 423
    const/4 v11, 0x0

    const-string v12, "component"

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/ComponentName;

    invoke-virtual {v9}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v6, v11, v12, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 424
    const/4 v11, 0x0

    const-string v12, "uid"

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/nfc/cardemulation/RegisteredServicesCache$DynamicAids;

    iget v9, v9, Lcom/android/nfc/cardemulation/RegisteredServicesCache$DynamicAids;->uid:I

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v6, v11, v12, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 425
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/nfc/cardemulation/RegisteredServicesCache$DynamicAids;

    iget-object v9, v9, Lcom/android/nfc/cardemulation/RegisteredServicesCache$DynamicAids;->aidGroups:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/nfc/cardemulation/AidGroup;

    .line 426
    .local v2, "group":Landroid/nfc/cardemulation/AidGroup;
    invoke-virtual {v2, v6}, Landroid/nfc/cardemulation/AidGroup;->writeAsXml(Lorg/xmlpull/v1/XmlSerializer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 435
    .end local v2    # "group":Landroid/nfc/cardemulation/AidGroup;
    .end local v3    # "i":I
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v6    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .end local v7    # "service":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/content/ComponentName;Lcom/android/nfc/cardemulation/RegisteredServicesCache$DynamicAids;>;"
    .end local v8    # "user":Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;
    :catch_0
    move-exception v0

    .line 436
    .local v0, "e":Ljava/lang/Exception;
    const-string v9, "RegisteredServicesCache"

    const-string v10, "Error writing dynamic AIDs"

    invoke-static {v9, v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 437
    if-eqz v1, :cond_0

    .line 438
    iget-object v9, p0, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->mDynamicAidsFile:Landroid/util/AtomicFile;

    invoke-virtual {v9, v1}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 440
    :cond_0
    const/4 v9, 0x0

    .end local v0    # "e":Ljava/lang/Exception;
    :goto_3
    return v9

    .line 428
    .restart local v3    # "i":I
    .restart local v5    # "i$":Ljava/util/Iterator;
    .restart local v6    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .restart local v7    # "service":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/content/ComponentName;Lcom/android/nfc/cardemulation/RegisteredServicesCache$DynamicAids;>;"
    .restart local v8    # "user":Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;
    :cond_1
    const/4 v9, 0x0

    :try_start_1
    const-string v11, "service"

    invoke-interface {v6, v9, v11}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_1

    .line 419
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v7    # "service":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/content/ComponentName;Lcom/android/nfc/cardemulation/RegisteredServicesCache$DynamicAids;>;"
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 431
    .end local v8    # "user":Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;
    :cond_3
    const/4 v9, 0x0

    const-string v11, "services"

    invoke-interface {v6, v9, v11}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 432
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 433
    iget-object v9, p0, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->mDynamicAidsFile:Landroid/util/AtomicFile;

    invoke-virtual {v9, v1}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move v9, v10

    .line 434
    goto :goto_3
.end method


# virtual methods
.method containsServiceLocked(Ljava/util/ArrayList;Landroid/content/ComponentName;)Z
    .locals 3
    .param p2, "serviceName"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/nfc/cardemulation/ApduServiceInfo;",
            ">;",
            "Landroid/content/ComponentName;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 179
    .local p1, "services":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/ApduServiceInfo;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/nfc/cardemulation/ApduServiceInfo;

    .line 180
    .local v1, "service":Landroid/nfc/cardemulation/ApduServiceInfo;
    invoke-virtual {v1}, Landroid/nfc/cardemulation/ApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    .line 182
    .end local v1    # "service":Landroid/nfc/cardemulation/ApduServiceInfo;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 554
    const-string v3, "Registered HCE services for current user: "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 555
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->findOrCreateUserLocked(I)Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;

    move-result-object v2

    .line 556
    .local v2, "userServices":Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;
    iget-object v3, v2, Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;->services:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/nfc/cardemulation/ApduServiceInfo;

    .line 557
    .local v1, "service":Landroid/nfc/cardemulation/ApduServiceInfo;
    invoke-virtual {v1, p1, p2, p3}, Landroid/nfc/cardemulation/ApduServiceInfo;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 558
    const-string v3, ""

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 560
    .end local v1    # "service":Landroid/nfc/cardemulation/ApduServiceInfo;
    :cond_0
    const-string v3, ""

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 561
    return-void
.end method

.method dump(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/nfc/cardemulation/ApduServiceInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 173
    .local p1, "services":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/ApduServiceInfo;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/nfc/cardemulation/ApduServiceInfo;

    .line 174
    .local v1, "service":Landroid/nfc/cardemulation/ApduServiceInfo;
    const-string v2, "RegisteredServicesCache"

    invoke-virtual {v1}, Landroid/nfc/cardemulation/ApduServiceInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 176
    .end local v1    # "service":Landroid/nfc/cardemulation/ApduServiceInfo;
    :cond_0
    return-void
.end method

.method public getAidGroupForService(IILandroid/content/ComponentName;Ljava/lang/String;)Landroid/nfc/cardemulation/AidGroup;
    .locals 5
    .param p1, "userId"    # I
    .param p2, "uid"    # I
    .param p3, "componentName"    # Landroid/content/ComponentName;
    .param p4, "category"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 498
    invoke-virtual {p0, p1, p3}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->getService(ILandroid/content/ComponentName;)Landroid/nfc/cardemulation/ApduServiceInfo;

    move-result-object v0

    .line 499
    .local v0, "serviceInfo":Landroid/nfc/cardemulation/ApduServiceInfo;
    if-eqz v0, :cond_1

    .line 500
    invoke-virtual {v0}, Landroid/nfc/cardemulation/ApduServiceInfo;->getUid()I

    move-result v2

    if-eq v2, p2, :cond_0

    .line 501
    const-string v2, "RegisteredServicesCache"

    const-string v3, "UID mismatch"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    :goto_0
    return-object v1

    .line 504
    :cond_0
    invoke-virtual {v0, p4}, Landroid/nfc/cardemulation/ApduServiceInfo;->getDynamicAidGroupForCategory(Ljava/lang/String;)Landroid/nfc/cardemulation/AidGroup;

    move-result-object v1

    goto :goto_0

    .line 506
    :cond_1
    const-string v2, "RegisteredServicesCache"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not find service "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method getInstalledServices(I)Ljava/util/ArrayList;
    .locals 16
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/nfc/cardemulation/ApduServiceInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 219
    :try_start_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->mContext:Landroid/content/Context;

    const-string v13, "android"

    const/4 v14, 0x0

    new-instance v15, Landroid/os/UserHandle;

    move/from16 v0, p1

    invoke-direct {v15, v0}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v12, v13, v14, v15}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v5

    .line 226
    .local v5, "pm":Landroid/content/pm/PackageManager;
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 228
    .local v11, "validServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/ApduServiceInfo;>;"
    new-instance v12, Landroid/content/Intent;

    const-string v13, "android.nfc.cardemulation.action.HOST_APDU_SERVICE"

    invoke-direct {v12, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v13, 0x80

    move/from16 v0, p1

    invoke-virtual {v5, v12, v13, v0}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v8

    .line 232
    .local v8, "resolvedServices":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v12, Landroid/content/Intent;

    const-string v13, "android.nfc.cardemulation.action.OFF_HOST_APDU_SERVICE"

    invoke-direct {v12, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v13, 0x80

    move/from16 v0, p1

    invoke-virtual {v5, v12, v13, v0}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v6

    .line 235
    .local v6, "resolvedOffHostServices":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v8, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 237
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ResolveInfo;

    .line 239
    .local v7, "resolvedService":Landroid/content/pm/ResolveInfo;
    :try_start_1
    invoke-interface {v6, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_2

    const/4 v4, 0x1

    .line 240
    .local v4, "onHost":Z
    :goto_1
    iget-object v10, v7, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 241
    .local v10, "si":Landroid/content/pm/ServiceInfo;
    new-instance v1, Landroid/content/ComponentName;

    iget-object v12, v10, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v13, v10, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v1, v12, v13}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    .local v1, "componentName":Landroid/content/ComponentName;
    const-string v12, "android.permission.NFC"

    iget-object v13, v10, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v12, v13}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v12

    if-eqz v12, :cond_3

    .line 245
    const-string v12, "RegisteredServicesCache"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Skipping APDU service "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ": it does not require the permission "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "android.permission.NFC"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    .line 261
    .end local v1    # "componentName":Landroid/content/ComponentName;
    .end local v4    # "onHost":Z
    .end local v10    # "si":Landroid/content/pm/ServiceInfo;
    :catch_0
    move-exception v2

    .line 262
    .local v2, "e":Lorg/xmlpull/v1/XmlPullParserException;
    const-string v12, "RegisteredServicesCache"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Unable to load component info "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v7}, Landroid/content/pm/ResolveInfo;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 221
    .end local v2    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v5    # "pm":Landroid/content/pm/PackageManager;
    .end local v6    # "resolvedOffHostServices":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v7    # "resolvedService":Landroid/content/pm/ResolveInfo;
    .end local v8    # "resolvedServices":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v11    # "validServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/ApduServiceInfo;>;"
    :catch_1
    move-exception v2

    .line 222
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v12, "RegisteredServicesCache"

    const-string v13, "Could not create user package context"

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    const/4 v11, 0x0

    .line 268
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_1
    return-object v11

    .line 239
    .restart local v3    # "i$":Ljava/util/Iterator;
    .restart local v5    # "pm":Landroid/content/pm/PackageManager;
    .restart local v6    # "resolvedOffHostServices":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v7    # "resolvedService":Landroid/content/pm/ResolveInfo;
    .restart local v8    # "resolvedServices":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v11    # "validServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/ApduServiceInfo;>;"
    :cond_2
    const/4 v4, 0x0

    goto :goto_1

    .line 250
    .restart local v1    # "componentName":Landroid/content/ComponentName;
    .restart local v4    # "onHost":Z
    .restart local v10    # "si":Landroid/content/pm/ServiceInfo;
    :cond_3
    :try_start_2
    const-string v12, "android.permission.BIND_NFC_SERVICE"

    iget-object v13, v10, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_4

    .line 252
    const-string v12, "RegisteredServicesCache"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Skipping APDU service "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ": it does not require the permission "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "android.permission.BIND_NFC_SERVICE"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    .line 263
    .end local v1    # "componentName":Landroid/content/ComponentName;
    .end local v4    # "onHost":Z
    .end local v10    # "si":Landroid/content/pm/ServiceInfo;
    :catch_2
    move-exception v2

    .line 264
    .local v2, "e":Ljava/io/IOException;
    const-string v12, "RegisteredServicesCache"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Unable to load component info "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v7}, Landroid/content/pm/ResolveInfo;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 257
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v1    # "componentName":Landroid/content/ComponentName;
    .restart local v4    # "onHost":Z
    .restart local v10    # "si":Landroid/content/pm/ServiceInfo;
    :cond_4
    :try_start_3
    new-instance v9, Landroid/nfc/cardemulation/ApduServiceInfo;

    invoke-direct {v9, v5, v7, v4}, Landroid/nfc/cardemulation/ApduServiceInfo;-><init>(Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;Z)V

    .line 258
    .local v9, "service":Landroid/nfc/cardemulation/ApduServiceInfo;
    if-eqz v9, :cond_0

    .line 259
    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_0
.end method

.method public getService(ILandroid/content/ComponentName;)Landroid/nfc/cardemulation/ApduServiceInfo;
    .locals 3
    .param p1, "userId"    # I
    .param p2, "service"    # Landroid/content/ComponentName;

    .prologue
    .line 190
    iget-object v2, p0, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 191
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->findOrCreateUserLocked(I)Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;

    move-result-object v0

    .line 192
    .local v0, "userServices":Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;
    iget-object v1, v0, Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;->services:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/nfc/cardemulation/ApduServiceInfo;

    monitor-exit v2

    return-object v1

    .line 193
    .end local v0    # "userServices":Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getServices(I)Ljava/util/List;
    .locals 4
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/nfc/cardemulation/ApduServiceInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 197
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 198
    .local v0, "services":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/ApduServiceInfo;>;"
    iget-object v3, p0, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 199
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->findOrCreateUserLocked(I)Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;

    move-result-object v1

    .line 200
    .local v1, "userServices":Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;
    iget-object v2, v1, Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;->services:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 201
    monitor-exit v3

    .line 202
    return-object v0

    .line 201
    .end local v1    # "userServices":Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getServicesForCategory(ILjava/lang/String;)Ljava/util/List;
    .locals 6
    .param p1, "userId"    # I
    .param p2, "category"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/nfc/cardemulation/ApduServiceInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 206
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 207
    .local v2, "services":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/ApduServiceInfo;>;"
    iget-object v5, p0, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 208
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->findOrCreateUserLocked(I)Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;

    move-result-object v3

    .line 209
    .local v3, "userServices":Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;
    iget-object v4, v3, Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;->services:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/nfc/cardemulation/ApduServiceInfo;

    .line 210
    .local v1, "service":Landroid/nfc/cardemulation/ApduServiceInfo;
    invoke-virtual {v1, p2}, Landroid/nfc/cardemulation/ApduServiceInfo;->hasCategory(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 212
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "service":Landroid/nfc/cardemulation/ApduServiceInfo;
    .end local v3    # "userServices":Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .restart local v0    # "i$":Ljava/util/Iterator;
    .restart local v3    # "userServices":Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;
    :cond_1
    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 213
    return-object v2
.end method

.method public hasService(ILandroid/content/ComponentName;)Z
    .locals 1
    .param p1, "userId"    # I
    .param p2, "service"    # Landroid/content/ComponentName;

    .prologue
    .line 186
    invoke-virtual {p0, p1, p2}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->getService(ILandroid/content/ComponentName;)Landroid/nfc/cardemulation/ApduServiceInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method initialize()V
    .locals 2

    .prologue
    .line 166
    iget-object v1, p0, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 167
    :try_start_0
    invoke-direct {p0}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->readDynamicAidsLocked()V

    .line 168
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 169
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->invalidateCache(I)V

    .line 170
    return-void

    .line 168
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public invalidateCache(I)V
    .locals 18
    .param p1, "userId"    # I

    .prologue
    .line 272
    invoke-virtual/range {p0 .. p1}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->getInstalledServices(I)Ljava/util/ArrayList;

    move-result-object v13

    .line 273
    .local v13, "validServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/ApduServiceInfo;>;"
    if-nez v13, :cond_0

    .line 326
    :goto_0
    return-void

    .line 276
    :cond_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->mLock:Ljava/lang/Object;

    monitor-enter v15

    .line 277
    :try_start_0
    invoke-direct/range {p0 .. p1}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->findOrCreateUserLocked(I)Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;

    move-result-object v12

    .line 280
    .local v12, "userServices":Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;
    iget-object v14, v12, Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;->services:Ljava/util/HashMap;

    invoke-virtual {v14}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .line 282
    .local v8, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Landroid/content/ComponentName;Landroid/nfc/cardemulation/ApduServiceInfo;>;>;"
    :cond_1
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_2

    .line 283
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 285
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/content/ComponentName;Landroid/nfc/cardemulation/ApduServiceInfo;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/content/ComponentName;

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->containsServiceLocked(Ljava/util/ArrayList;Landroid/content/ComponentName;)Z

    move-result v14

    if-nez v14, :cond_1

    .line 286
    const-string v14, "RegisteredServicesCache"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Service removed: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v14, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    invoke-interface {v8}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 322
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/content/ComponentName;Landroid/nfc/cardemulation/ApduServiceInfo;>;"
    .end local v8    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Landroid/content/ComponentName;Landroid/nfc/cardemulation/ApduServiceInfo;>;>;"
    .end local v12    # "userServices":Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;
    :catchall_0
    move-exception v14

    monitor-exit v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v14

    .line 290
    .restart local v8    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Landroid/content/ComponentName;Landroid/nfc/cardemulation/ApduServiceInfo;>;>;"
    .restart local v12    # "userServices":Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;
    :cond_2
    :try_start_1
    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/nfc/cardemulation/ApduServiceInfo;

    .line 291
    .local v9, "service":Landroid/nfc/cardemulation/ApduServiceInfo;
    const-string v14, "RegisteredServicesCache"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Adding service: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v9}, Landroid/nfc/cardemulation/ApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " AIDs: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v9}, Landroid/nfc/cardemulation/ApduServiceInfo;->getAids()Ljava/util/List;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v14, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    iget-object v14, v12, Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;->services:Ljava/util/HashMap;

    invoke-virtual {v9}, Landroid/nfc/cardemulation/ApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v14, v0, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 297
    .end local v9    # "service":Landroid/nfc/cardemulation/ApduServiceInfo;
    :cond_3
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 299
    .local v11, "toBeRemoved":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    iget-object v14, v12, Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;->dynamicAids:Ljava/util/HashMap;

    invoke-virtual {v14}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .end local v6    # "i$":Ljava/util/Iterator;
    :cond_4
    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_7

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 301
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/content/ComponentName;Lcom/android/nfc/cardemulation/RegisteredServicesCache$DynamicAids;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 302
    .local v1, "component":Landroid/content/ComponentName;
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/nfc/cardemulation/RegisteredServicesCache$DynamicAids;

    .line 303
    .local v2, "dynamicAids":Lcom/android/nfc/cardemulation/RegisteredServicesCache$DynamicAids;
    iget-object v14, v12, Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;->services:Ljava/util/HashMap;

    invoke-virtual {v14, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/nfc/cardemulation/ApduServiceInfo;

    .line 304
    .local v10, "serviceInfo":Landroid/nfc/cardemulation/ApduServiceInfo;
    if-eqz v10, :cond_5

    invoke-virtual {v10}, Landroid/nfc/cardemulation/ApduServiceInfo;->getUid()I

    move-result v14

    iget v0, v2, Lcom/android/nfc/cardemulation/RegisteredServicesCache$DynamicAids;->uid:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-eq v14, v0, :cond_6

    .line 305
    :cond_5
    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 308
    :cond_6
    iget-object v14, v2, Lcom/android/nfc/cardemulation/RegisteredServicesCache$DynamicAids;->aidGroups:Ljava/util/HashMap;

    invoke-virtual {v14}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/nfc/cardemulation/AidGroup;

    .line 309
    .local v5, "group":Landroid/nfc/cardemulation/AidGroup;
    invoke-virtual {v10, v5}, Landroid/nfc/cardemulation/ApduServiceInfo;->setOrReplaceDynamicAidGroup(Landroid/nfc/cardemulation/AidGroup;)V

    goto :goto_4

    .line 314
    .end local v1    # "component":Landroid/content/ComponentName;
    .end local v2    # "dynamicAids":Lcom/android/nfc/cardemulation/RegisteredServicesCache$DynamicAids;
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/content/ComponentName;Lcom/android/nfc/cardemulation/RegisteredServicesCache$DynamicAids;>;"
    .end local v5    # "group":Landroid/nfc/cardemulation/AidGroup;
    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v10    # "serviceInfo":Landroid/nfc/cardemulation/ApduServiceInfo;
    :cond_7
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-lez v14, :cond_9

    .line 315
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .restart local v6    # "i$":Ljava/util/Iterator;
    :goto_5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_8

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 316
    .restart local v1    # "component":Landroid/content/ComponentName;
    const-string v14, "RegisteredServicesCache"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Removing dynamic AIDs registered by "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v14, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    iget-object v14, v12, Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;->dynamicAids:Ljava/util/HashMap;

    invoke-virtual {v14, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 320
    .end local v1    # "component":Landroid/content/ComponentName;
    :cond_8
    invoke-direct/range {p0 .. p0}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->writeDynamicAidsLocked()Z

    .line 322
    .end local v6    # "i$":Ljava/util/Iterator;
    :cond_9
    monitor-exit v15
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 324
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->mCallback:Lcom/android/nfc/cardemulation/RegisteredServicesCache$Callback;

    invoke-static {v13}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v15

    move/from16 v0, p1

    invoke-interface {v14, v0, v15}, Lcom/android/nfc/cardemulation/RegisteredServicesCache$Callback;->onServicesUpdated(ILjava/util/List;)V

    .line 325
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->dump(Ljava/util/ArrayList;)V

    goto/16 :goto_0
.end method

.method public registerAidGroupForService(IILandroid/content/ComponentName;Landroid/nfc/cardemulation/AidGroup;)Z
    .locals 14
    .param p1, "userId"    # I
    .param p2, "uid"    # I
    .param p3, "componentName"    # Landroid/content/ComponentName;
    .param p4, "aidGroup"    # Landroid/nfc/cardemulation/AidGroup;

    .prologue
    .line 446
    const/4 v5, 0x0

    .line 448
    .local v5, "newServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/ApduServiceInfo;>;"
    iget-object v11, p0, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->mLock:Ljava/lang/Object;

    monitor-enter v11

    .line 449
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->findOrCreateUserLocked(I)Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;

    move-result-object v8

    .line 451
    .local v8, "services":Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;
    move-object/from16 v0, p3

    invoke-virtual {p0, p1, v0}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->getService(ILandroid/content/ComponentName;)Landroid/nfc/cardemulation/ApduServiceInfo;

    move-result-object v7

    .line 452
    .local v7, "serviceInfo":Landroid/nfc/cardemulation/ApduServiceInfo;
    if-nez v7, :cond_1

    .line 453
    const-string v10, "RegisteredServicesCache"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Service "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p3

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " does not exist."

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    const/4 v9, 0x0

    monitor-exit v11

    .line 493
    :cond_0
    :goto_0
    return v9

    .line 456
    :cond_1
    invoke-virtual {v7}, Landroid/nfc/cardemulation/ApduServiceInfo;->getUid()I

    move-result v10

    move/from16 v0, p2

    if-eq v10, v0, :cond_2

    .line 461
    const-string v10, "RegisteredServicesCache"

    const-string v12, "UID mismatch."

    invoke-static {v10, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    const/4 v9, 0x0

    monitor-exit v11

    goto :goto_0

    .line 488
    .end local v7    # "serviceInfo":Landroid/nfc/cardemulation/ApduServiceInfo;
    .end local v8    # "services":Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;
    :catchall_0
    move-exception v10

    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v10

    .line 466
    .restart local v7    # "serviceInfo":Landroid/nfc/cardemulation/ApduServiceInfo;
    .restart local v8    # "services":Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;
    :cond_2
    :try_start_1
    invoke-virtual/range {p4 .. p4}, Landroid/nfc/cardemulation/AidGroup;->getAids()Ljava/util/List;

    move-result-object v2

    .line 467
    .local v2, "aids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 468
    .local v1, "aid":Ljava/lang/String;
    invoke-static {v1}, Landroid/nfc/cardemulation/CardEmulation;->isValidAid(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 469
    const-string v10, "RegisteredServicesCache"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "AID "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " is not a valid AID"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    const/4 v9, 0x0

    monitor-exit v11

    goto :goto_0

    .line 473
    .end local v1    # "aid":Ljava/lang/String;
    :cond_4
    move-object/from16 v0, p4

    invoke-virtual {v7, v0}, Landroid/nfc/cardemulation/ApduServiceInfo;->setOrReplaceDynamicAidGroup(Landroid/nfc/cardemulation/AidGroup;)V

    .line 474
    iget-object v10, v8, Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;->dynamicAids:Ljava/util/HashMap;

    move-object/from16 v0, p3

    invoke-virtual {v10, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/nfc/cardemulation/RegisteredServicesCache$DynamicAids;

    .line 475
    .local v3, "dynAids":Lcom/android/nfc/cardemulation/RegisteredServicesCache$DynamicAids;
    if-nez v3, :cond_5

    .line 476
    new-instance v3, Lcom/android/nfc/cardemulation/RegisteredServicesCache$DynamicAids;

    .end local v3    # "dynAids":Lcom/android/nfc/cardemulation/RegisteredServicesCache$DynamicAids;
    move/from16 v0, p2

    invoke-direct {v3, v0}, Lcom/android/nfc/cardemulation/RegisteredServicesCache$DynamicAids;-><init>(I)V

    .line 477
    .restart local v3    # "dynAids":Lcom/android/nfc/cardemulation/RegisteredServicesCache$DynamicAids;
    iget-object v10, v8, Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;->dynamicAids:Ljava/util/HashMap;

    move-object/from16 v0, p3

    invoke-virtual {v10, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 479
    :cond_5
    iget-object v10, v3, Lcom/android/nfc/cardemulation/RegisteredServicesCache$DynamicAids;->aidGroups:Ljava/util/HashMap;

    invoke-virtual/range {p4 .. p4}, Landroid/nfc/cardemulation/AidGroup;->getCategory()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p4

    invoke-virtual {v10, v12, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 480
    invoke-direct {p0}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->writeDynamicAidsLocked()Z

    move-result v9

    .line 481
    .local v9, "success":Z
    if-eqz v9, :cond_6

    .line 482
    new-instance v6, Ljava/util/ArrayList;

    iget-object v10, v8, Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;->services:Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v10

    invoke-direct {v6, v10}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .end local v5    # "newServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/ApduServiceInfo;>;"
    .local v6, "newServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/ApduServiceInfo;>;"
    move-object v5, v6

    .line 488
    .end local v6    # "newServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/ApduServiceInfo;>;"
    .restart local v5    # "newServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/ApduServiceInfo;>;"
    :goto_1
    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 489
    if-eqz v9, :cond_0

    .line 491
    iget-object v10, p0, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->mCallback:Lcom/android/nfc/cardemulation/RegisteredServicesCache$Callback;

    invoke-interface {v10, p1, v5}, Lcom/android/nfc/cardemulation/RegisteredServicesCache$Callback;->onServicesUpdated(ILjava/util/List;)V

    goto/16 :goto_0

    .line 484
    :cond_6
    :try_start_2
    const-string v10, "RegisteredServicesCache"

    const-string v12, "Failed to persist AID group."

    invoke-static {v10, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    iget-object v10, v3, Lcom/android/nfc/cardemulation/RegisteredServicesCache$DynamicAids;->aidGroups:Ljava/util/HashMap;

    invoke-virtual/range {p4 .. p4}, Landroid/nfc/cardemulation/AidGroup;->getCategory()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public removeAidGroupForService(IILandroid/content/ComponentName;Ljava/lang/String;)Z
    .locals 11
    .param p1, "userId"    # I
    .param p2, "uid"    # I
    .param p3, "componentName"    # Landroid/content/ComponentName;
    .param p4, "category"    # Ljava/lang/String;

    .prologue
    .line 513
    const/4 v6, 0x0

    .line 514
    .local v6, "success":Z
    const/4 v2, 0x0

    .line 515
    .local v2, "newServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/ApduServiceInfo;>;"
    iget-object v8, p0, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->mLock:Ljava/lang/Object;

    monitor-enter v8

    .line 516
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->findOrCreateUserLocked(I)Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;

    move-result-object v5

    .line 517
    .local v5, "services":Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;
    invoke-virtual {p0, p1, p3}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->getService(ILandroid/content/ComponentName;)Landroid/nfc/cardemulation/ApduServiceInfo;

    move-result-object v4

    .line 518
    .local v4, "serviceInfo":Landroid/nfc/cardemulation/ApduServiceInfo;
    if-eqz v4, :cond_5

    .line 519
    invoke-virtual {v4}, Landroid/nfc/cardemulation/ApduServiceInfo;->getUid()I

    move-result v7

    if-eq v7, p2, :cond_0

    .line 521
    const-string v7, "RegisteredServicesCache"

    const-string v9, "UID mismatch"

    invoke-static {v7, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    const/4 v7, 0x0

    monitor-exit v8

    .line 550
    :goto_0
    return v7

    .line 524
    :cond_0
    invoke-virtual {v4, p4}, Landroid/nfc/cardemulation/ApduServiceInfo;->removeDynamicAidGroupForCategory(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 525
    const-string v7, "RegisteredServicesCache"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " Could not find dynamic AIDs for category "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    const/4 v7, 0x0

    monitor-exit v8

    goto :goto_0

    .line 546
    .end local v4    # "serviceInfo":Landroid/nfc/cardemulation/ApduServiceInfo;
    .end local v5    # "services":Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    .line 529
    .restart local v4    # "serviceInfo":Landroid/nfc/cardemulation/ApduServiceInfo;
    .restart local v5    # "services":Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;
    :cond_1
    :try_start_1
    iget-object v7, v5, Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;->dynamicAids:Ljava/util/HashMap;

    invoke-virtual {v7, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/nfc/cardemulation/RegisteredServicesCache$DynamicAids;

    .line 530
    .local v1, "dynAids":Lcom/android/nfc/cardemulation/RegisteredServicesCache$DynamicAids;
    if-eqz v1, :cond_4

    .line 531
    iget-object v7, v1, Lcom/android/nfc/cardemulation/RegisteredServicesCache$DynamicAids;->aidGroups:Ljava/util/HashMap;

    invoke-virtual {v7, p4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/nfc/cardemulation/AidGroup;

    .line 532
    .local v0, "deletedGroup":Landroid/nfc/cardemulation/AidGroup;
    invoke-direct {p0}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->writeDynamicAidsLocked()Z

    move-result v6

    .line 533
    if-eqz v6, :cond_3

    .line 534
    new-instance v3, Ljava/util/ArrayList;

    iget-object v7, v5, Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;->services:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-direct {v3, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .end local v2    # "newServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/ApduServiceInfo;>;"
    .local v3, "newServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/ApduServiceInfo;>;"
    move-object v2, v3

    .line 546
    .end local v0    # "deletedGroup":Landroid/nfc/cardemulation/AidGroup;
    .end local v1    # "dynAids":Lcom/android/nfc/cardemulation/RegisteredServicesCache$DynamicAids;
    .end local v3    # "newServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/ApduServiceInfo;>;"
    .restart local v2    # "newServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/ApduServiceInfo;>;"
    :goto_1
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 547
    if-eqz v6, :cond_2

    .line 548
    iget-object v7, p0, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->mCallback:Lcom/android/nfc/cardemulation/RegisteredServicesCache$Callback;

    invoke-interface {v7, p1, v2}, Lcom/android/nfc/cardemulation/RegisteredServicesCache$Callback;->onServicesUpdated(ILjava/util/List;)V

    :cond_2
    move v7, v6

    .line 550
    goto :goto_0

    .line 536
    .restart local v0    # "deletedGroup":Landroid/nfc/cardemulation/AidGroup;
    .restart local v1    # "dynAids":Lcom/android/nfc/cardemulation/RegisteredServicesCache$DynamicAids;
    :cond_3
    :try_start_2
    const-string v7, "RegisteredServicesCache"

    const-string v9, "Could not persist deleted AID group."

    invoke-static {v7, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    iget-object v7, v1, Lcom/android/nfc/cardemulation/RegisteredServicesCache$DynamicAids;->aidGroups:Ljava/util/HashMap;

    invoke-virtual {v7, p4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 538
    const/4 v7, 0x0

    monitor-exit v8

    goto :goto_0

    .line 541
    .end local v0    # "deletedGroup":Landroid/nfc/cardemulation/AidGroup;
    :cond_4
    const-string v7, "RegisteredServicesCache"

    const-string v9, "Could not find aid group in local cache."

    invoke-static {v7, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 544
    .end local v1    # "dynAids":Lcom/android/nfc/cardemulation/RegisteredServicesCache$DynamicAids;
    :cond_5
    const-string v7, "RegisteredServicesCache"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Service "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " does not exist."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method
