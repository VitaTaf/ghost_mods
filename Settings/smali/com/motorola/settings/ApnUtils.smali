.class public Lcom/motorola/settings/ApnUtils;
.super Ljava/lang/Object;
.source "ApnUtils.java"


# direct methods
.method public static customValidateAndSave(Landroid/content/Context;Landroid/database/Cursor;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/os/Bundle;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "apnCursor"    # Landroid/database/Cursor;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "values"    # Landroid/content/ContentValues;

    .prologue
    invoke-static {p0}, Lcom/motorola/android/internal/util/CBSLoader;->getInstance(Landroid/content/Context;)Lcom/motorola/android/internal/util/CBSLoader;

    move-result-object v0

    .local v0, "loader":Lcom/motorola/android/internal/util/CBSLoader;
    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .local v1, "result":Ljava/lang/Object;
    :try_start_0
    const-string v2, "ApnUtils"

    const-string v3, "customValidateAndSave"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Landroid/content/Context;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-class v6, Landroid/database/Cursor;

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-class v6, Landroid/net/Uri;

    aput-object v6, v4, v5

    const/4 v5, 0x3

    const-class v6, Landroid/content/ContentValues;

    aput-object v6, v4, v5

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p0, v5, v6

    const/4 v6, 0x1

    aput-object p1, v5, v6

    const/4 v6, 0x2

    aput-object p2, v5, v6

    const/4 v6, 0x3

    aput-object p3, v5, v6

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/motorola/android/internal/util/CBSLoader;->invokeStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    instance-of v2, v1, Landroid/os/Bundle;

    if-eqz v2, :cond_0

    check-cast v1, Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "result":Ljava/lang/Object;
    :goto_0
    return-object v1

    :catch_0
    move-exception v2

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static customizeApnEditor(Lcom/android/settings/ApnEditor;Landroid/preference/PreferenceScreen;ZLandroid/database/Cursor;)V
    .locals 11
    .param p0, "editor"    # Lcom/android/settings/ApnEditor;
    .param p1, "root"    # Landroid/preference/PreferenceScreen;
    .param p2, "newApn"    # Z
    .param p3, "apnCursor"    # Landroid/database/Cursor;

    .prologue
    move-object v1, p0

    .local v1, "context":Landroid/content/Context;
    invoke-static {v1}, Lcom/motorola/android/internal/util/CBSLoader;->getInstance(Landroid/content/Context;)Lcom/motorola/android/internal/util/CBSLoader;

    move-result-object v2

    .local v2, "loader":Lcom/motorola/android/internal/util/CBSLoader;
    if-eqz v2, :cond_1

    const/4 v4, 0x0

    .local v4, "result":Ljava/lang/Object;
    :try_start_0
    const-string v5, "ApnUtils"

    const-string v6, "customizeApnEditor"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    const-class v9, Landroid/preference/PreferenceScreen;

    aput-object v9, v7, v8

    const/4 v8, 0x1

    sget-object v9, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v9, v7, v8

    const/4 v8, 0x2

    const-class v9, Landroid/database/Cursor;

    aput-object v9, v7, v8

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object p1, v8, v9

    const/4 v9, 0x1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x2

    aput-object p3, v8, v9

    invoke-virtual {v2, v5, v6, v7, v8}, Lcom/motorola/android/internal/util/CBSLoader;->invokeStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_1

    instance-of v5, v4, Landroid/os/Bundle;

    if-eqz v5, :cond_1

    move-object v0, v4

    check-cast v0, Landroid/os/Bundle;

    move-object v3, v0

    .local v3, "options":Landroid/os/Bundle;
    const-string v5, "editable"

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "editable"

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    invoke-virtual {p0, v5}, Lcom/android/settings/ApnEditor;->setEditable(Z)V

    :cond_0
    const-string v5, "deletable"

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, "deletable"

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    invoke-virtual {p0, v5}, Lcom/android/settings/ApnEditor;->setDeletable(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v3    # "options":Landroid/os/Bundle;
    .end local v4    # "result":Ljava/lang/Object;
    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v5

    goto :goto_0
.end method

.method public static isApnKeySelected(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "selctedKey"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    invoke-static {p0}, Lcom/motorola/android/internal/util/CBSLoader;->getInstance(Landroid/content/Context;)Lcom/motorola/android/internal/util/CBSLoader;

    move-result-object v0

    .local v0, "loader":Lcom/motorola/android/internal/util/CBSLoader;
    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .local v1, "result":Ljava/lang/Object;
    :try_start_0
    const-string v3, "ApnUtils"

    const-string v4, "isApnKeySelected"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Landroid/content/Context;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p0, v6, v7

    const/4 v7, 0x1

    aput-object p1, v6, v7

    const/4 v7, 0x2

    aput-object p2, v6, v7

    invoke-virtual {v0, v3, v4, v5, v6}, Lcom/motorola/android/internal/util/CBSLoader;->invokeStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    instance-of v3, v1, Ljava/lang/Boolean;

    if-eqz v3, :cond_0

    check-cast v1, Ljava/lang/Boolean;

    .end local v1    # "result":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    :cond_0
    :goto_0
    return v2

    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public static skipApnFromFillList(Landroid/content/Context;Landroid/database/Cursor;)Z
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "apnCursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {p0}, Lcom/motorola/android/internal/util/CBSLoader;->getInstance(Landroid/content/Context;)Lcom/motorola/android/internal/util/CBSLoader;

    move-result-object v0

    .local v0, "loader":Lcom/motorola/android/internal/util/CBSLoader;
    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .local v1, "result":Ljava/lang/Object;
    :try_start_0
    const-string v4, "ApnUtils"

    const-string v5, "skipApnFromFillList"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Landroid/content/Context;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-class v8, Landroid/database/Cursor;

    aput-object v8, v6, v7

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p0, v7, v8

    const/4 v8, 0x1

    aput-object p1, v7, v8

    invoke-virtual {v0, v4, v5, v6, v7}, Lcom/motorola/android/internal/util/CBSLoader;->invokeStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .end local v1    # "result":Ljava/lang/Object;
    :goto_0
    if-eqz v1, :cond_0

    instance-of v4, v1, Ljava/lang/Boolean;

    if-eqz v4, :cond_0

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_0

    :goto_1
    return v2

    :cond_0
    move v2, v3

    goto :goto_1

    .restart local v1    # "result":Ljava/lang/Object;
    :catch_0
    move-exception v4

    goto :goto_0
.end method
