.class public Lcom/android/settings/wifi/WapiCertMgmtDialog;
.super Lcom/android/internal/app/AlertActivity;
.source "WapiCertMgmtDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# static fields
.field private static certificate_installation_path:Ljava/lang/String;

.field private static certificate_path:Ljava/lang/String;

.field private static default_sdcard_path:Ljava/lang/String;

.field private static external_sdcard_path:Ljava/lang/String;

.field private static wifi_sdcard_path:Ljava/lang/String;


# instance fields
.field private mASCertEdit:Landroid/widget/EditText;

.field private mASCertText:Landroid/widget/TextView;

.field private mCancelButtonPos:I

.field private mCreateSubdirEdit:Landroid/widget/EditText;

.field private mCreateSubdirText:Landroid/widget/TextView;

.field private mDeletDirSpinner:Landroid/widget/Spinner;

.field private mDeletDirText:Landroid/widget/TextView;

.field private mInstallButtonPos:I

.field private mMode:I

.field private mUninstallButtonPos:I

.field private mUninstallCerts:Ljava/lang/String;

.field private mUserCertEdit:Landroid/widget/EditText;

.field private mUserCertText:Landroid/widget/TextView;

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const v1, 0x7fffffff

    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/wifi/WapiCertMgmtDialog;->mMode:I

    iput v1, p0, Lcom/android/settings/wifi/WapiCertMgmtDialog;->mInstallButtonPos:I

    iput v1, p0, Lcom/android/settings/wifi/WapiCertMgmtDialog;->mUninstallButtonPos:I

    iput v1, p0, Lcom/android/settings/wifi/WapiCertMgmtDialog;->mCancelButtonPos:I

    return-void
.end method

.method private copyFile(Ljava/io/File;Ljava/io/File;)Z
    .locals 8
    .param p1, "fileDest"    # Ljava/io/File;
    .param p2, "fileSource"    # Ljava/io/File;

    .prologue
    const/4 v5, 0x0

    const/16 v6, 0x400

    new-array v0, v6, [B

    .local v0, "buf":[B
    const/4 v4, 0x0

    .local v4, "i":I
    const-string v6, "WapiCertMgmtDialog"

    const-string v7, "copyFile"

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .local v2, "fI":Ljava/io/FileInputStream;
    :try_start_1
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .local v3, "fO":Ljava/io/FileOutputStream;
    :goto_0
    :try_start_2
    invoke-virtual {v2, v0}, Ljava/io/FileInputStream;->read([B)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result v4

    const/4 v6, -0x1

    if-ne v4, v6, :cond_0

    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    const/4 v5, 0x1

    .end local v2    # "fI":Ljava/io/FileInputStream;
    .end local v3    # "fO":Ljava/io/FileOutputStream;
    :goto_1
    return v5

    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    iget-object v6, p0, Lcom/android/settings/wifi/WapiCertMgmtDialog;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    goto :goto_1

    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v2    # "fI":Ljava/io/FileInputStream;
    :catch_1
    move-exception v1

    .restart local v1    # "e":Ljava/lang/Exception;
    iget-object v6, p0, Lcom/android/settings/wifi/WapiCertMgmtDialog;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    goto :goto_1

    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v3    # "fO":Ljava/io/FileOutputStream;
    :catch_2
    move-exception v1

    .restart local v1    # "e":Ljava/lang/Exception;
    iget-object v6, p0, Lcom/android/settings/wifi/WapiCertMgmtDialog;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    goto :goto_1

    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v6, 0x0

    :try_start_4
    invoke-virtual {v3, v0, v6, v4}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_0

    :catch_3
    move-exception v1

    .restart local v1    # "e":Ljava/lang/Exception;
    iget-object v6, p0, Lcom/android/settings/wifi/WapiCertMgmtDialog;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    goto :goto_1

    .end local v1    # "e":Ljava/lang/Exception;
    :catch_4
    move-exception v1

    .restart local v1    # "e":Ljava/lang/Exception;
    iget-object v6, p0, Lcom/android/settings/wifi/WapiCertMgmtDialog;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    goto :goto_1
.end method

.method private deleteAll(Ljava/lang/String;)V
    .locals 8
    .param p1, "filepath"    # Ljava/lang/String;

    .prologue
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v1, "f":Ljava/io/File;
    const-string v5, "WapiCertMgmtDialog"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "deleteAll filepath "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .local v0, "delFile":[Ljava/io/File;
    array-length v2, v0

    .local v2, "fileNum":I
    if-nez v2, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .end local v0    # "delFile":[Ljava/io/File;
    .end local v2    # "fileNum":I
    :cond_1
    :goto_0
    return-void

    .restart local v0    # "delFile":[Ljava/io/File;
    .restart local v2    # "fileNum":I
    :cond_2
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v2, :cond_0

    aget-object v5, v0, v3

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    .local v4, "subdirectory":Ljava/lang/String;
    invoke-direct {p0, v4}, Lcom/android/settings/wifi/WapiCertMgmtDialog;->deleteAll(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .end local v0    # "delFile":[Ljava/io/File;
    .end local v2    # "fileNum":I
    .end local v3    # "i":I
    .end local v4    # "subdirectory":Ljava/lang/String;
    :cond_3
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_0
.end method

.method private getDeletDirFromSpinner()I
    .locals 2

    .prologue
    iget-object v1, p0, Lcom/android/settings/wifi/WapiCertMgmtDialog;->mDeletDirSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    .local v0, "position":I
    return v0
.end method

.method private getInput(Landroid/widget/EditText;)Ljava/lang/String;
    .locals 1
    .param p1, "edit"    # Landroid/widget/EditText;

    .prologue
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private handleCancle()V
    .locals 0

    .prologue
    return-void
.end method

.method private handleDeletDirChange(I)V
    .locals 5
    .param p1, "deletDirIdx"    # I

    .prologue
    new-instance v1, Ljava/io/File;

    const-string v3, "/data/wapi_certificate"

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v1, "certificatePath":Ljava/io/File;
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-nez v3, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .local v0, "certificateList":[Ljava/io/File;
    aget-object v3, v0, p1

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/wifi/WapiCertMgmtDialog;->mUninstallCerts:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .end local v0    # "certificateList":[Ljava/io/File;
    :catch_0
    move-exception v2

    .local v2, "e":Ljava/lang/Exception;
    iget-object v3, p0, Lcom/android/settings/wifi/WapiCertMgmtDialog;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method private handleInstall()V
    .locals 17

    .prologue
    const-string v13, "WapiCertMgmtDialog"

    const-string v14, "handleInstall"

    invoke-static {v13, v14}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v9, "/data/wapi_certificate"

    .local v9, "stringDefDir":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v2, "defDir":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v13

    if-nez v13, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v13

    if-nez v13, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/WapiCertMgmtDialog;->getApplicationContext()Landroid/content/Context;

    move-result-object v13

    const-string v14, "Cert. base dir create failed"

    const/4 v15, 0x1

    invoke-static {v13, v14, v15}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void

    :cond_0
    const/16 v13, 0x1ff

    const/4 v14, -0x1

    const/4 v15, -0x1

    invoke-static {v9, v13, v14, v15}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WapiCertMgmtDialog;->mCreateSubdirEdit:Landroid/widget/EditText;

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/settings/wifi/WapiCertMgmtDialog;->getInput(Landroid/widget/EditText;)Ljava/lang/String;

    move-result-object v11

    .local v11, "subdir":Ljava/lang/String;
    if-eqz v11, :cond_2

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_3

    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/WapiCertMgmtDialog;->getApplicationContext()Landroid/content/Context;

    move-result-object v13

    const v14, 0x7f09032e

    const/4 v15, 0x1

    invoke-static {v13, v14, v15}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_3
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "/data/wapi_certificate/"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .local v10, "stringDestDir":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v3, "destDir":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v13

    if-eqz v13, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/WapiCertMgmtDialog;->getApplicationContext()Landroid/content/Context;

    move-result-object v13

    const v14, 0x7f09032f

    const/4 v15, 0x1

    invoke-static {v13, v14, v15}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_4
    :try_start_0
    invoke-virtual {v3}, Ljava/io/File;->mkdir()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v13

    if-nez v13, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/WapiCertMgmtDialog;->getApplicationContext()Landroid/content/Context;

    move-result-object v13

    const v14, 0x7f090330

    const/4 v15, 0x1

    invoke-static {v13, v14, v15}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :catch_0
    move-exception v4

    .local v4, "e":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WapiCertMgmtDialog;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v14

    iput-object v14, v13, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    goto :goto_1

    .end local v4    # "e":Ljava/lang/Exception;
    :cond_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WapiCertMgmtDialog;->mASCertEdit:Landroid/widget/EditText;

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/settings/wifi/WapiCertMgmtDialog;->getInput(Landroid/widget/EditText;)Ljava/lang/String;

    move-result-object v1

    .local v1, "asCert":Ljava/lang/String;
    if-eqz v1, :cond_6

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_7

    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/WapiCertMgmtDialog;->getApplicationContext()Landroid/content/Context;

    move-result-object v13

    const v14, 0x7f090331

    const/4 v15, 0x1

    invoke-static {v13, v14, v15}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/Toast;->show()V

    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/settings/wifi/WapiCertMgmtDialog;->deleteAll(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    const-string v13, "/system/wifi/sdcard"

    sput-object v13, Lcom/android/settings/wifi/WapiCertMgmtDialog;->wifi_sdcard_path:Ljava/lang/String;

    const-string v13, "SECONDARY_STORAGE"

    invoke-static {v13}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    sput-object v13, Lcom/android/settings/wifi/WapiCertMgmtDialog;->external_sdcard_path:Ljava/lang/String;

    const-string v13, "EXTERNAL_STORAGE"

    invoke-static {v13}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    sput-object v13, Lcom/android/settings/wifi/WapiCertMgmtDialog;->default_sdcard_path:Ljava/lang/String;

    sget-object v13, Lcom/android/settings/wifi/WapiCertMgmtDialog;->default_sdcard_path:Ljava/lang/String;

    sput-object v13, Lcom/android/settings/wifi/WapiCertMgmtDialog;->certificate_installation_path:Ljava/lang/String;

    const-string v13, "WapiCertMgmtDialog"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "default_sdcard_path: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sget-object v15, Lcom/android/settings/wifi/WapiCertMgmtDialog;->default_sdcard_path:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v13, "WapiCertMgmtDialog"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "asCert file:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v14, Lcom/android/settings/wifi/WapiCertMgmtDialog;->default_sdcard_path:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "/"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    sput-object v13, Lcom/android/settings/wifi/WapiCertMgmtDialog;->certificate_path:Ljava/lang/String;

    const-string v13, "WapiCertMgmtDialog"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "certificate_path: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sget-object v15, Lcom/android/settings/wifi/WapiCertMgmtDialog;->certificate_path:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v5, Ljava/io/File;

    sget-object v13, Lcom/android/settings/wifi/WapiCertMgmtDialog;->certificate_path:Ljava/lang/String;

    invoke-direct {v5, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v5, "fileASCert":Ljava/io/File;
    const-string v13, "WapiCertMgmtDialog"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "fileASCert.exists(): "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v13

    if-nez v13, :cond_8

    const-string v13, "WapiCertMgmtDialog"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Certificate path: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sget-object v15, Lcom/android/settings/wifi/WapiCertMgmtDialog;->certificate_path:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " does not exist"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v13, "WapiCertMgmtDialog"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Hence trying with "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sget-object v15, Lcom/android/settings/wifi/WapiCertMgmtDialog;->external_sdcard_path:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v13, Lcom/android/settings/wifi/WapiCertMgmtDialog;->external_sdcard_path:Ljava/lang/String;

    sput-object v13, Lcom/android/settings/wifi/WapiCertMgmtDialog;->certificate_installation_path:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v14, Lcom/android/settings/wifi/WapiCertMgmtDialog;->external_sdcard_path:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "/"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    sput-object v13, Lcom/android/settings/wifi/WapiCertMgmtDialog;->certificate_path:Ljava/lang/String;

    new-instance v5, Ljava/io/File;

    .end local v5    # "fileASCert":Ljava/io/File;
    sget-object v13, Lcom/android/settings/wifi/WapiCertMgmtDialog;->certificate_path:Ljava/lang/String;

    invoke-direct {v5, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .restart local v5    # "fileASCert":Ljava/io/File;
    const-string v13, "WapiCertMgmtDialog"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "fileASCert.exists(): "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v13

    if-nez v13, :cond_8

    const-string v13, "WapiCertMgmtDialog"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Secondary certificate path: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sget-object v15, Lcom/android/settings/wifi/WapiCertMgmtDialog;->certificate_path:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " does not exist."

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v13, "WapiCertMgmtDialog"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Hence trying with "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sget-object v15, Lcom/android/settings/wifi/WapiCertMgmtDialog;->wifi_sdcard_path:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v13, Lcom/android/settings/wifi/WapiCertMgmtDialog;->wifi_sdcard_path:Ljava/lang/String;

    sput-object v13, Lcom/android/settings/wifi/WapiCertMgmtDialog;->certificate_installation_path:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v14, Lcom/android/settings/wifi/WapiCertMgmtDialog;->wifi_sdcard_path:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "/"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    sput-object v13, Lcom/android/settings/wifi/WapiCertMgmtDialog;->certificate_path:Ljava/lang/String;

    new-instance v5, Ljava/io/File;

    .end local v5    # "fileASCert":Ljava/io/File;
    sget-object v13, Lcom/android/settings/wifi/WapiCertMgmtDialog;->certificate_path:Ljava/lang/String;

    invoke-direct {v5, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .restart local v5    # "fileASCert":Ljava/io/File;
    const-string v13, "WapiCertMgmtDialog"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "fileASCert.exists(): "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v13

    if-nez v13, :cond_8

    const-string v13, "WapiCertMgmtDialog"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "wifi certificate path: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sget-object v15, Lcom/android/settings/wifi/WapiCertMgmtDialog;->certificate_path:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " does not exist."

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v13, "WapiCertMgmtDialog"

    const-string v14, "Hence ABORTING!!!!!"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/WapiCertMgmtDialog;->getApplicationContext()Landroid/content/Context;

    move-result-object v13

    const v14, 0x7f090332

    const/4 v15, 0x1

    invoke-static {v13, v14, v15}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/Toast;->show()V

    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/settings/wifi/WapiCertMgmtDialog;->deleteAll(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_8
    const-string v13, "WapiCertMgmtDialog"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "certificate is installing from "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sget-object v15, Lcom/android/settings/wifi/WapiCertMgmtDialog;->certificate_installation_path:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v14, Lcom/android/settings/wifi/WapiCertMgmtDialog;->certificate_installation_path:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "/"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/settings/wifi/WapiCertMgmtDialog;->isAsCertificate(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_9

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/WapiCertMgmtDialog;->getApplicationContext()Landroid/content/Context;

    move-result-object v13

    const v14, 0x7f090333

    const/4 v15, 0x1

    invoke-static {v13, v14, v15}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/Toast;->show()V

    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/settings/wifi/WapiCertMgmtDialog;->deleteAll(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_9
    const-string v13, "WapiCertMgmtDialog"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "handleInstall Create AS Cert: = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v6, Ljava/io/File;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "/"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "as.cer"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v6, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v6, "fileDestAS":Ljava/io/File;
    :try_start_1
    invoke-virtual {v6}, Ljava/io/File;->createNewFile()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v13

    if-eqz v13, :cond_a

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v5}, Lcom/android/settings/wifi/WapiCertMgmtDialog;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    move-result v13

    if-nez v13, :cond_b

    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/settings/wifi/WapiCertMgmtDialog;->deleteAll(Ljava/lang/String;)V

    goto/16 :goto_0

    :catch_1
    move-exception v4

    .restart local v4    # "e":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WapiCertMgmtDialog;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v14

    iput-object v14, v13, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    goto :goto_2

    .end local v4    # "e":Ljava/lang/Exception;
    :cond_a
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/settings/wifi/WapiCertMgmtDialog;->deleteAll(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_b
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WapiCertMgmtDialog;->mUserCertEdit:Landroid/widget/EditText;

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/settings/wifi/WapiCertMgmtDialog;->getInput(Landroid/widget/EditText;)Ljava/lang/String;

    move-result-object v12

    .local v12, "userCert":Ljava/lang/String;
    if-eqz v12, :cond_c

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_d

    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/WapiCertMgmtDialog;->getApplicationContext()Landroid/content/Context;

    move-result-object v13

    const v14, 0x7f090335

    const/4 v15, 0x1

    invoke-static {v13, v14, v15}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/Toast;->show()V

    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/settings/wifi/WapiCertMgmtDialog;->deleteAll(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_d
    new-instance v8, Ljava/io/File;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v14, Lcom/android/settings/wifi/WapiCertMgmtDialog;->certificate_installation_path:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "/"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v8, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v8, "fileUserCert":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v13

    if-nez v13, :cond_e

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/WapiCertMgmtDialog;->getApplicationContext()Landroid/content/Context;

    move-result-object v13

    const v14, 0x7f090336

    const/4 v15, 0x1

    invoke-static {v13, v14, v15}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/Toast;->show()V

    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/settings/wifi/WapiCertMgmtDialog;->deleteAll(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_e
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v14, Lcom/android/settings/wifi/WapiCertMgmtDialog;->certificate_installation_path:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "/"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/settings/wifi/WapiCertMgmtDialog;->isUserCertificate(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_f

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/WapiCertMgmtDialog;->getApplicationContext()Landroid/content/Context;

    move-result-object v13

    const v14, 0x7f090334

    const/4 v15, 0x1

    invoke-static {v13, v14, v15}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/Toast;->show()V

    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/settings/wifi/WapiCertMgmtDialog;->deleteAll(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_f
    new-instance v7, Ljava/io/File;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "/"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "user.cer"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v7, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v7, "fileDestUser":Ljava/io/File;
    :try_start_2
    invoke-virtual {v7}, Ljava/io/File;->createNewFile()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :goto_3
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v13

    if-eqz v13, :cond_10

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v8}, Lcom/android/settings/wifi/WapiCertMgmtDialog;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    move-result v13

    if-nez v13, :cond_11

    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/settings/wifi/WapiCertMgmtDialog;->deleteAll(Ljava/lang/String;)V

    goto/16 :goto_0

    :catch_2
    move-exception v4

    .restart local v4    # "e":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WapiCertMgmtDialog;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v14

    iput-object v14, v13, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    goto :goto_3

    .end local v4    # "e":Ljava/lang/Exception;
    :cond_10
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/settings/wifi/WapiCertMgmtDialog;->deleteAll(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_11
    const/16 v13, 0x1c7

    const/4 v14, -0x1

    const/4 v15, -0x1

    invoke-static {v10, v13, v14, v15}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "/"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "user.cer"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/16 v14, 0x124

    const/4 v15, -0x1

    const/16 v16, -0x1

    invoke-static/range {v13 .. v16}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "/"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "as.cer"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/16 v14, 0x124

    const/4 v15, -0x1

    const/16 v16, -0x1

    invoke-static/range {v13 .. v16}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    goto/16 :goto_0
.end method

.method private handleUninstall()V
    .locals 2

    .prologue
    const-string v0, "WapiCertMgmtDialog"

    const-string v1, "handleUninstall"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/wifi/WapiCertMgmtDialog;->mUninstallCerts:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/WapiCertMgmtDialog;->mUninstallCerts:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WapiCertMgmtDialog;->deleteAll(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private isAsCertificate(Ljava/lang/String;)Z
    .locals 9
    .param p1, "ascert"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const-string v2, "BEGIN CERTIFICATE"

    .local v2, "stringCertBegin":Ljava/lang/String;
    const-string v3, "END CERTIFICATE"

    .local v3, "stringCertEnd":Ljava/lang/String;
    const-string v4, "BEGIN EC PRIVATE KEY"

    .local v4, "stringECBegin":Ljava/lang/String;
    const-string v5, "END EC PRIVATE KEY"

    .local v5, "stringECEnd":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v0, "as":Ljava/io/File;
    :try_start_0
    invoke-virtual {p0, v2, v0}, Lcom/android/settings/wifi/WapiCertMgmtDialog;->searchString(Ljava/lang/String;Ljava/io/File;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    if-eq v7, v8, :cond_1

    :cond_0
    :goto_0
    return v6

    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    iget-object v7, p0, Lcom/android/settings/wifi/WapiCertMgmtDialog;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    goto :goto_0

    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    :try_start_1
    invoke-virtual {p0, v3, v0}, Lcom/android/settings/wifi/WapiCertMgmtDialog;->searchString(Ljava/lang/String;Ljava/io/File;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v8

    if-ne v7, v8, :cond_0

    :try_start_2
    invoke-virtual {p0, v4, v0}, Lcom/android/settings/wifi/WapiCertMgmtDialog;->searchString(Ljava/lang/String;Ljava/io/File;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result v8

    if-nez v8, :cond_0

    :try_start_3
    invoke-virtual {p0, v5, v0}, Lcom/android/settings/wifi/WapiCertMgmtDialog;->searchString(Ljava/lang/String;Ljava/io/File;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    move-result v8

    if-nez v8, :cond_0

    move v6, v7

    goto :goto_0

    :catch_1
    move-exception v1

    .restart local v1    # "e":Ljava/lang/Exception;
    iget-object v7, p0, Lcom/android/settings/wifi/WapiCertMgmtDialog;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    goto :goto_0

    .end local v1    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v1

    .restart local v1    # "e":Ljava/lang/Exception;
    iget-object v7, p0, Lcom/android/settings/wifi/WapiCertMgmtDialog;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    goto :goto_0

    .end local v1    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v1

    .restart local v1    # "e":Ljava/lang/Exception;
    iget-object v7, p0, Lcom/android/settings/wifi/WapiCertMgmtDialog;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method private isUserCertificate(Ljava/lang/String;)Z
    .locals 9
    .param p1, "usercert"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const-string v1, "BEGIN CERTIFICATE"

    .local v1, "stringCertBegin":Ljava/lang/String;
    const-string v2, "END CERTIFICATE"

    .local v2, "stringCertEnd":Ljava/lang/String;
    const-string v3, "BEGIN EC PRIVATE KEY"

    .local v3, "stringECBegin":Ljava/lang/String;
    const-string v4, "END EC PRIVATE KEY"

    .local v4, "stringECEnd":Ljava/lang/String;
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v5, "user":Ljava/io/File;
    :try_start_0
    invoke-virtual {p0, v1, v5}, Lcom/android/settings/wifi/WapiCertMgmtDialog;->searchString(Ljava/lang/String;Ljava/io/File;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    if-eq v7, v8, :cond_1

    :cond_0
    :goto_0
    return v6

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    iget-object v7, p0, Lcom/android/settings/wifi/WapiCertMgmtDialog;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    :try_start_1
    invoke-virtual {p0, v2, v5}, Lcom/android/settings/wifi/WapiCertMgmtDialog;->searchString(Ljava/lang/String;Ljava/io/File;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v8

    if-ne v7, v8, :cond_0

    :try_start_2
    invoke-virtual {p0, v3, v5}, Lcom/android/settings/wifi/WapiCertMgmtDialog;->searchString(Ljava/lang/String;Ljava/io/File;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result v8

    if-ne v7, v8, :cond_0

    :try_start_3
    invoke-virtual {p0, v4, v5}, Lcom/android/settings/wifi/WapiCertMgmtDialog;->searchString(Ljava/lang/String;Ljava/io/File;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    move-result v8

    if-ne v7, v8, :cond_0

    move v6, v7

    goto :goto_0

    :catch_1
    move-exception v0

    .restart local v0    # "e":Ljava/lang/Exception;
    iget-object v7, p0, Lcom/android/settings/wifi/WapiCertMgmtDialog;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v0

    .restart local v0    # "e":Ljava/lang/Exception;
    iget-object v7, p0, Lcom/android/settings/wifi/WapiCertMgmtDialog;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v0

    .restart local v0    # "e":Ljava/lang/Exception;
    iget-object v7, p0, Lcom/android/settings/wifi/WapiCertMgmtDialog;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method private onLayout()V
    .locals 8

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    .local v4, "positiveButtonResId":I
    const/4 v1, 0x0

    .local v1, "negativeButtonResId":I
    const/4 v2, 0x0

    .local v2, "neutralButtonResId":I
    iget-object v3, p0, Lcom/android/settings/wifi/WapiCertMgmtDialog;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .local v3, "p":Lcom/android/internal/app/AlertController$AlertParams;
    invoke-virtual {p0}, Lcom/android/settings/wifi/WapiCertMgmtDialog;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .local v0, "launchIntent":Landroid/content/Intent;
    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/wifi/WapiCertMgmtDialog;->finish()V

    :goto_0
    return-void

    :cond_0
    const v5, 0x7f020086

    iput v5, v3, Lcom/android/internal/app/AlertController$AlertParams;->mIconId:I

    const-string v5, "com.android.settings.wifi.WapiCertMgmtDialog.CERT_INSTALL"

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v5, 0x0

    :goto_1
    iput v5, p0, Lcom/android/settings/wifi/WapiCertMgmtDialog;->mMode:I

    iput-boolean v6, v3, Lcom/android/internal/app/AlertController$AlertParams;->mForceInverseBackground:Z

    iget v5, p0, Lcom/android/settings/wifi/WapiCertMgmtDialog;->mMode:I

    if-nez v5, :cond_3

    const v5, 0x7f090325

    invoke-virtual {p0, v5}, Lcom/android/settings/wifi/WapiCertMgmtDialog;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    const v5, 0x7f0400ee

    invoke-direct {p0, v5}, Lcom/android/settings/wifi/WapiCertMgmtDialog;->setLayout(I)V

    const v5, 0x7f090326

    invoke-virtual {p0, v5}, Lcom/android/settings/wifi/WapiCertMgmtDialog;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    iput-object p0, v3, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    :cond_1
    :goto_2
    iget-object v5, p0, Lcom/android/settings/wifi/WapiCertMgmtDialog;->mView:Landroid/view/View;

    iput-object v5, v3, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    const v5, 0x7f090328

    invoke-virtual {p0, v5}, Lcom/android/settings/wifi/WapiCertMgmtDialog;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    iput-object p0, v3, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WapiCertMgmtDialog;->setupAlert()V

    goto :goto_0

    :cond_2
    move v5, v6

    goto :goto_1

    :cond_3
    iget v5, p0, Lcom/android/settings/wifi/WapiCertMgmtDialog;->mMode:I

    if-ne v5, v6, :cond_1

    const v5, 0x7f090329

    invoke-virtual {p0, v5}, Lcom/android/settings/wifi/WapiCertMgmtDialog;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    const v5, 0x7f0400ef

    invoke-direct {p0, v5}, Lcom/android/settings/wifi/WapiCertMgmtDialog;->setLayout(I)V

    const v5, 0x7f090327

    invoke-virtual {p0, v5}, Lcom/android/settings/wifi/WapiCertMgmtDialog;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/android/internal/app/AlertController$AlertParams;->mNeutralButtonText:Ljava/lang/CharSequence;

    iput-object p0, v3, Lcom/android/internal/app/AlertController$AlertParams;->mNeutralButtonListener:Landroid/content/DialogInterface$OnClickListener;

    goto :goto_2
.end method

.method private onReferenceViews(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    iget v0, p0, Lcom/android/settings/wifi/WapiCertMgmtDialog;->mMode:I

    if-nez v0, :cond_1

    const v0, 0x7f0f027c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/WapiCertMgmtDialog;->mCreateSubdirText:Landroid/widget/TextView;

    const v0, 0x7f0f027d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/settings/wifi/WapiCertMgmtDialog;->mCreateSubdirEdit:Landroid/widget/EditText;

    const v0, 0x7f0f027e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/WapiCertMgmtDialog;->mASCertText:Landroid/widget/TextView;

    const v0, 0x7f0f027f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/settings/wifi/WapiCertMgmtDialog;->mASCertEdit:Landroid/widget/EditText;

    const v0, 0x7f0f0280

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/WapiCertMgmtDialog;->mUserCertText:Landroid/widget/TextView;

    const v0, 0x7f0f0281

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/settings/wifi/WapiCertMgmtDialog;->mUserCertEdit:Landroid/widget/EditText;

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/android/settings/wifi/WapiCertMgmtDialog;->mMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const v0, 0x7f0f0282

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/WapiCertMgmtDialog;->mDeletDirText:Landroid/widget/TextView;

    const v0, 0x7f0f0283

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/settings/wifi/WapiCertMgmtDialog;->mDeletDirSpinner:Landroid/widget/Spinner;

    iget-object v0, p0, Lcom/android/settings/wifi/WapiCertMgmtDialog;->mDeletDirSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    invoke-direct {p0}, Lcom/android/settings/wifi/WapiCertMgmtDialog;->setDeletDirSpinnerAdapter()V

    goto :goto_0
.end method

.method private setDeletDirSpinnerAdapter()V
    .locals 9

    .prologue
    move-object v4, p0

    .local v4, "context":Landroid/content/Context;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .local v1, "cerString":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v3, Ljava/io/File;

    const-string v7, "/data/wapi_certificate"

    invoke-direct {v3, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v3, "certificatePath":Ljava/io/File;
    :try_start_0
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-nez v7, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .local v2, "certificateList":[Ljava/io/File;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    array-length v7, v2

    if-ge v6, v7, :cond_1

    aget-object v7, v2, v6

    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v8, 0x1090008

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/String;

    check-cast v7, [Ljava/lang/String;

    invoke-direct {v0, v4, v8, v7}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .local v0, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    const v7, 0x1090009

    invoke-virtual {v0, v7}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    iget-object v7, p0, Lcom/android/settings/wifi/WapiCertMgmtDialog;->mDeletDirSpinner:Landroid/widget/Spinner;

    invoke-virtual {v7, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .end local v0    # "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    .end local v2    # "certificateList":[Ljava/io/File;
    .end local v6    # "i":I
    :catch_0
    move-exception v5

    .local v5, "e":Ljava/lang/Exception;
    iget-object v7, p0, Lcom/android/settings/wifi/WapiCertMgmtDialog;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    invoke-virtual {v5}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method private setLayout(I)V
    .locals 2
    .param p1, "layoutResId"    # I

    .prologue
    invoke-virtual {p0}, Lcom/android/settings/wifi/WapiCertMgmtDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WapiCertMgmtDialog;->mView:Landroid/view/View;

    iget-object v0, p0, Lcom/android/settings/wifi/WapiCertMgmtDialog;->mView:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WapiCertMgmtDialog;->onReferenceViews(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const-string v0, "WapiCertMgmtDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onClick which "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    invoke-direct {p0}, Lcom/android/settings/wifi/WapiCertMgmtDialog;->handleInstall()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, -0x3

    if-ne p2, v0, :cond_2

    invoke-direct {p0}, Lcom/android/settings/wifi/WapiCertMgmtDialog;->handleUninstall()V

    goto :goto_0

    :cond_2
    const/4 v0, -0x2

    if-ne p2, v0, :cond_0

    invoke-direct {p0}, Lcom/android/settings/wifi/WapiCertMgmtDialog;->handleCancle()V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const-string v0, "WapiCertMgmtDialog"

    const-string v1, "onClick View "

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/android/settings/wifi/WapiCertMgmtDialog;->onLayout()V

    return-void
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p1, "parent"    # Landroid/widget/AdapterView;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    const-string v0, "WapiCertMgmtDialog"

    const-string v1, "onItemSelected "

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/wifi/WapiCertMgmtDialog;->mDeletDirSpinner:Landroid/widget/Spinner;

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lcom/android/settings/wifi/WapiCertMgmtDialog;->getDeletDirFromSpinner()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WapiCertMgmtDialog;->handleDeletDirChange(I)V

    :cond_0
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 2
    .param p1, "parent"    # Landroid/widget/AdapterView;

    .prologue
    const-string v0, "WapiCertMgmtDialog"

    const-string v1, "onNothingSelected "

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public searchString(Ljava/lang/String;Ljava/io/File;)I
    .locals 5
    .param p1, "find_str"    # Ljava/lang/String;
    .param p2, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    new-instance v1, Ljava/io/FileReader;

    invoke-direct {v1, p2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    .local v1, "reader":Ljava/io/FileReader;
    new-instance v2, Ljava/io/BufferedReader;

    const/16 v4, 0x800

    invoke-direct {v2, v1, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .local v2, "reader2":Ljava/io/BufferedReader;
    const-string v3, ""

    .local v3, "s":Ljava/lang/String;
    new-instance v0, Ljava/lang/String;

    const-string v4, ""

    invoke-direct {v0, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .local v0, "buffer":Ljava/lang/String;
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    return v4
.end method
