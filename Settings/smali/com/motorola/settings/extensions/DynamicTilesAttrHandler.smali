.class public Lcom/motorola/settings/extensions/DynamicTilesAttrHandler;
.super Lcom/motorola/extensions/internal/DynamicHeaderAttrHandler;
.source "DynamicTilesAttrHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/settings/extensions/DynamicTilesAttrHandler$ParentOrderWrapper;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-class v0, Lcom/motorola/settings/extensions/DynamicTilesAttrHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/motorola/settings/extensions/DynamicTilesAttrHandler;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "targetContext"    # Landroid/content/Context;

    .prologue
    .line 26
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/motorola/extensions/internal/DynamicHeaderAttrHandler;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 27
    return-void
.end method

.method private getOrderAboveByIdName(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/util/List;)Lcom/motorola/settings/extensions/DynamicTilesAttrHandler$ParentOrderWrapper;
    .locals 18
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "idName"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/CharSequence;",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/dashboard/DashboardCategory;",
            ">;)",
            "Lcom/motorola/settings/extensions/DynamicTilesAttrHandler$ParentOrderWrapper;"
        }
    .end annotation

    .prologue
    .line 136
    .local p3, "targetTiles":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/dashboard/DashboardCategory;>;"
    invoke-interface/range {p2 .. p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v13

    const-string v14, "id"

    move-object/from16 v0, p1

    invoke-static {v0, v13, v14}, Lcom/motorola/settings/extensions/DynamicTilesAttrHandler;->getResIndentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 137
    .local v4, "id":I
    if-eqz v4, :cond_6

    .line 138
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/settings/dashboard/DashboardCategory;

    .line 139
    .local v9, "parentCategory":Lcom/android/settings/dashboard/DashboardCategory;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v9}, Lcom/android/settings/dashboard/DashboardCategory;->getTilesCount()I

    move-result v13

    if-ge v2, v13, :cond_0

    .line 140
    invoke-virtual {v9, v2}, Lcom/android/settings/dashboard/DashboardCategory;->getTile(I)Lcom/android/settings/dashboard/DashboardTile;

    move-result-object v12

    .line 141
    .local v12, "tile":Lcom/android/settings/dashboard/DashboardTile;
    iget-wide v14, v12, Lcom/android/settings/dashboard/DashboardTile;->id:J

    int-to-long v0, v4

    move-wide/from16 v16, v0

    cmp-long v13, v14, v16

    if-nez v13, :cond_5

    .line 142
    move v7, v2

    .line 143
    .local v7, "order":I
    add-int/lit8 v5, v2, -0x1

    .local v5, "j":I
    :goto_1
    if-ltz v5, :cond_2

    .line 144
    const/4 v6, 0x0

    .line 145
    .local v6, "lookNext":Z
    invoke-virtual {v9, v5}, Lcom/android/settings/dashboard/DashboardCategory;->getTile(I)Lcom/android/settings/dashboard/DashboardTile;

    move-result-object v11

    .line 146
    .local v11, "t":Lcom/android/settings/dashboard/DashboardTile;
    iget-object v13, v11, Lcom/android/settings/dashboard/DashboardTile;->extras:Landroid/os/Bundle;

    if-eqz v13, :cond_1

    .line 147
    iget-object v13, v11, Lcom/android/settings/dashboard/DashboardTile;->extras:Landroid/os/Bundle;

    const-string v14, "orderRefKey"

    invoke-virtual {v13, v14}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v10

    .line 149
    .local v10, "refName":Ljava/lang/CharSequence;
    if-eqz v10, :cond_1

    .line 150
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/motorola/settings/extensions/DynamicTilesAttrHandler;->mOrderAboveIdName:Ljava/lang/CharSequence;

    invoke-virtual {v10, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 151
    iget-object v13, v11, Lcom/android/settings/dashboard/DashboardTile;->extras:Landroid/os/Bundle;

    const-string v14, "orderPriority"

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v8

    .line 154
    .local v8, "orderPriority":I
    move-object/from16 v0, p0

    iget v13, v0, Lcom/motorola/settings/extensions/DynamicTilesAttrHandler;->mOrderPriority:I

    if-ge v13, v8, :cond_3

    .line 155
    move v7, v5

    .line 156
    const/4 v6, 0x1

    .line 169
    .end local v8    # "orderPriority":I
    .end local v10    # "refName":Ljava/lang/CharSequence;
    :cond_1
    :goto_2
    if-nez v6, :cond_4

    .line 172
    .end local v6    # "lookNext":Z
    .end local v11    # "t":Lcom/android/settings/dashboard/DashboardTile;
    :cond_2
    new-instance v13, Lcom/motorola/settings/extensions/DynamicTilesAttrHandler$ParentOrderWrapper;

    invoke-direct {v13, v9, v7}, Lcom/motorola/settings/extensions/DynamicTilesAttrHandler$ParentOrderWrapper;-><init>(Lcom/android/settings/dashboard/DashboardCategory;I)V

    .line 179
    .end local v2    # "i":I
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v5    # "j":I
    .end local v7    # "order":I
    .end local v9    # "parentCategory":Lcom/android/settings/dashboard/DashboardCategory;
    .end local v12    # "tile":Lcom/android/settings/dashboard/DashboardTile;
    :goto_3
    return-object v13

    .line 158
    .restart local v2    # "i":I
    .restart local v3    # "i$":Ljava/util/Iterator;
    .restart local v5    # "j":I
    .restart local v6    # "lookNext":Z
    .restart local v7    # "order":I
    .restart local v8    # "orderPriority":I
    .restart local v9    # "parentCategory":Lcom/android/settings/dashboard/DashboardCategory;
    .restart local v10    # "refName":Ljava/lang/CharSequence;
    .restart local v11    # "t":Lcom/android/settings/dashboard/DashboardTile;
    .restart local v12    # "tile":Lcom/android/settings/dashboard/DashboardTile;
    :cond_3
    move-object/from16 v0, p0

    iget v13, v0, Lcom/motorola/settings/extensions/DynamicTilesAttrHandler;->mOrderPriority:I

    if-ne v13, v8, :cond_1

    .line 159
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/motorola/settings/extensions/DynamicTilesAttrHandler;->mTitle:Ljava/lang/CharSequence;

    if-eqz v13, :cond_1

    iget-object v13, v11, Lcom/android/settings/dashboard/DashboardTile;->title:Ljava/lang/CharSequence;

    if-eqz v13, :cond_1

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/motorola/settings/extensions/DynamicTilesAttrHandler;->mTitle:Ljava/lang/CharSequence;

    invoke-interface {v13}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v13

    iget-object v14, v11, Lcom/android/settings/dashboard/DashboardTile;->title:Ljava/lang/CharSequence;

    invoke-interface {v14}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v13

    if-gez v13, :cond_1

    .line 161
    move v7, v5

    .line 162
    const/4 v6, 0x1

    goto :goto_2

    .line 143
    .end local v8    # "orderPriority":I
    .end local v10    # "refName":Ljava/lang/CharSequence;
    :cond_4
    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    .line 139
    .end local v5    # "j":I
    .end local v6    # "lookNext":Z
    .end local v7    # "order":I
    .end local v11    # "t":Lcom/android/settings/dashboard/DashboardTile;
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 177
    .end local v2    # "i":I
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v9    # "parentCategory":Lcom/android/settings/dashboard/DashboardCategory;
    .end local v12    # "tile":Lcom/android/settings/dashboard/DashboardTile;
    :cond_6
    sget-object v13, Lcom/motorola/settings/extensions/DynamicTilesAttrHandler;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " not found"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    :cond_7
    const/4 v13, 0x0

    goto :goto_3
.end method

.method private getOrderBelowByIdName(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/util/List;)Lcom/motorola/settings/extensions/DynamicTilesAttrHandler$ParentOrderWrapper;
    .locals 18
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "idName"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/CharSequence;",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/dashboard/DashboardCategory;",
            ">;)",
            "Lcom/motorola/settings/extensions/DynamicTilesAttrHandler$ParentOrderWrapper;"
        }
    .end annotation

    .prologue
    .line 187
    .local p3, "targetTiles":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/dashboard/DashboardCategory;>;"
    invoke-interface/range {p2 .. p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v13

    const-string v14, "id"

    move-object/from16 v0, p1

    invoke-static {v0, v13, v14}, Lcom/motorola/settings/extensions/DynamicTilesAttrHandler;->getResIndentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 188
    .local v4, "id":I
    if-eqz v4, :cond_6

    .line 189
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/settings/dashboard/DashboardCategory;

    .line 190
    .local v9, "parentCategory":Lcom/android/settings/dashboard/DashboardCategory;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v9}, Lcom/android/settings/dashboard/DashboardCategory;->getTilesCount()I

    move-result v13

    if-ge v2, v13, :cond_0

    .line 191
    invoke-virtual {v9, v2}, Lcom/android/settings/dashboard/DashboardCategory;->getTile(I)Lcom/android/settings/dashboard/DashboardTile;

    move-result-object v12

    .line 192
    .local v12, "tile":Lcom/android/settings/dashboard/DashboardTile;
    iget-wide v14, v12, Lcom/android/settings/dashboard/DashboardTile;->id:J

    int-to-long v0, v4

    move-wide/from16 v16, v0

    cmp-long v13, v14, v16

    if-nez v13, :cond_5

    .line 193
    move v7, v2

    .line 194
    .local v7, "order":I
    add-int/lit8 v5, v2, 0x1

    .local v5, "j":I
    :goto_1
    invoke-virtual {v9}, Lcom/android/settings/dashboard/DashboardCategory;->getTilesCount()I

    move-result v13

    if-ge v5, v13, :cond_2

    .line 195
    const/4 v6, 0x0

    .line 196
    .local v6, "lookNext":Z
    invoke-virtual {v9, v5}, Lcom/android/settings/dashboard/DashboardCategory;->getTile(I)Lcom/android/settings/dashboard/DashboardTile;

    move-result-object v11

    .line 197
    .local v11, "t":Lcom/android/settings/dashboard/DashboardTile;
    iget-object v13, v11, Lcom/android/settings/dashboard/DashboardTile;->extras:Landroid/os/Bundle;

    if-eqz v13, :cond_1

    .line 198
    iget-object v13, v11, Lcom/android/settings/dashboard/DashboardTile;->extras:Landroid/os/Bundle;

    const-string v14, "orderRefKey"

    invoke-virtual {v13, v14}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v10

    .line 200
    .local v10, "refName":Ljava/lang/CharSequence;
    if-eqz v10, :cond_1

    .line 201
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/motorola/settings/extensions/DynamicTilesAttrHandler;->mOrderBelowIdName:Ljava/lang/CharSequence;

    invoke-virtual {v10, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 202
    iget-object v13, v11, Lcom/android/settings/dashboard/DashboardTile;->extras:Landroid/os/Bundle;

    const-string v14, "orderPriority"

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v8

    .line 205
    .local v8, "orderPriority":I
    move-object/from16 v0, p0

    iget v13, v0, Lcom/motorola/settings/extensions/DynamicTilesAttrHandler;->mOrderPriority:I

    if-ge v13, v8, :cond_3

    .line 206
    move v7, v5

    .line 207
    const/4 v6, 0x1

    .line 218
    .end local v8    # "orderPriority":I
    .end local v10    # "refName":Ljava/lang/CharSequence;
    :cond_1
    :goto_2
    if-nez v6, :cond_4

    .line 221
    .end local v6    # "lookNext":Z
    .end local v11    # "t":Lcom/android/settings/dashboard/DashboardTile;
    :cond_2
    new-instance v13, Lcom/motorola/settings/extensions/DynamicTilesAttrHandler$ParentOrderWrapper;

    add-int/lit8 v14, v7, 0x1

    invoke-direct {v13, v9, v14}, Lcom/motorola/settings/extensions/DynamicTilesAttrHandler$ParentOrderWrapper;-><init>(Lcom/android/settings/dashboard/DashboardCategory;I)V

    .line 229
    .end local v2    # "i":I
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v5    # "j":I
    .end local v7    # "order":I
    .end local v9    # "parentCategory":Lcom/android/settings/dashboard/DashboardCategory;
    .end local v12    # "tile":Lcom/android/settings/dashboard/DashboardTile;
    :goto_3
    return-object v13

    .line 208
    .restart local v2    # "i":I
    .restart local v3    # "i$":Ljava/util/Iterator;
    .restart local v5    # "j":I
    .restart local v6    # "lookNext":Z
    .restart local v7    # "order":I
    .restart local v8    # "orderPriority":I
    .restart local v9    # "parentCategory":Lcom/android/settings/dashboard/DashboardCategory;
    .restart local v10    # "refName":Ljava/lang/CharSequence;
    .restart local v11    # "t":Lcom/android/settings/dashboard/DashboardTile;
    .restart local v12    # "tile":Lcom/android/settings/dashboard/DashboardTile;
    :cond_3
    move-object/from16 v0, p0

    iget v13, v0, Lcom/motorola/settings/extensions/DynamicTilesAttrHandler;->mOrderPriority:I

    if-ne v13, v8, :cond_1

    .line 209
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/motorola/settings/extensions/DynamicTilesAttrHandler;->mTitle:Ljava/lang/CharSequence;

    if-eqz v13, :cond_1

    iget-object v13, v11, Lcom/android/settings/dashboard/DashboardTile;->title:Ljava/lang/CharSequence;

    if-eqz v13, :cond_1

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/motorola/settings/extensions/DynamicTilesAttrHandler;->mTitle:Ljava/lang/CharSequence;

    invoke-interface {v13}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v13

    iget-object v14, v11, Lcom/android/settings/dashboard/DashboardTile;->title:Ljava/lang/CharSequence;

    invoke-interface {v14}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v13

    if-lez v13, :cond_1

    .line 211
    move v7, v5

    .line 212
    const/4 v6, 0x1

    goto :goto_2

    .line 194
    .end local v8    # "orderPriority":I
    .end local v10    # "refName":Ljava/lang/CharSequence;
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 190
    .end local v5    # "j":I
    .end local v6    # "lookNext":Z
    .end local v7    # "order":I
    .end local v11    # "t":Lcom/android/settings/dashboard/DashboardTile;
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 227
    .end local v2    # "i":I
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v9    # "parentCategory":Lcom/android/settings/dashboard/DashboardCategory;
    .end local v12    # "tile":Lcom/android/settings/dashboard/DashboardTile;
    :cond_6
    sget-object v13, Lcom/motorola/settings/extensions/DynamicTilesAttrHandler;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " not found"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    :cond_7
    const/4 v13, 0x0

    goto :goto_3
.end method

.method private getOrderFirstByPriority(Landroid/content/Context;Ljava/util/List;)Lcom/motorola/settings/extensions/DynamicTilesAttrHandler$ParentOrderWrapper;
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/dashboard/DashboardCategory;",
            ">;)",
            "Lcom/motorola/settings/extensions/DynamicTilesAttrHandler$ParentOrderWrapper;"
        }
    .end annotation

    .prologue
    .local p2, "targetTiles":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/dashboard/DashboardCategory;>;"
    const/4 v9, 0x0

    .line 236
    invoke-interface {p2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settings/dashboard/DashboardCategory;

    .line 237
    .local v5, "parentCategory":Lcom/android/settings/dashboard/DashboardCategory;
    const/4 v3, 0x0

    .line 238
    .local v3, "order":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v5}, Lcom/android/settings/dashboard/DashboardCategory;->getTilesCount()I

    move-result v7

    if-ge v0, v7, :cond_1

    .line 239
    const/4 v2, 0x0

    .line 240
    .local v2, "lookNext":Z
    move v3, v0

    .line 241
    invoke-virtual {v5, v0}, Lcom/android/settings/dashboard/DashboardCategory;->getTile(I)Lcom/android/settings/dashboard/DashboardTile;

    move-result-object v6

    .line 242
    .local v6, "tile":Lcom/android/settings/dashboard/DashboardTile;
    iget-object v7, v6, Lcom/android/settings/dashboard/DashboardTile;->extras:Landroid/os/Bundle;

    if-eqz v7, :cond_0

    .line 243
    iget-object v7, v6, Lcom/android/settings/dashboard/DashboardTile;->extras:Landroid/os/Bundle;

    const-string v8, "orderFirst"

    invoke-virtual {v7, v8, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 245
    .local v1, "isFirst":Z
    if-eqz v1, :cond_0

    .line 246
    iget-object v7, v6, Lcom/android/settings/dashboard/DashboardTile;->extras:Landroid/os/Bundle;

    const-string v8, "orderPriority"

    invoke-virtual {v7, v8, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 249
    .local v4, "orderPriority":I
    iget v7, p0, Lcom/motorola/settings/extensions/DynamicTilesAttrHandler;->mOrderPriority:I

    if-ge v7, v4, :cond_2

    .line 250
    const/4 v2, 0x1

    .line 259
    .end local v1    # "isFirst":Z
    .end local v4    # "orderPriority":I
    :cond_0
    :goto_1
    if-nez v2, :cond_3

    .line 262
    .end local v2    # "lookNext":Z
    .end local v6    # "tile":Lcom/android/settings/dashboard/DashboardTile;
    :cond_1
    new-instance v7, Lcom/motorola/settings/extensions/DynamicTilesAttrHandler$ParentOrderWrapper;

    invoke-direct {v7, v5, v3}, Lcom/motorola/settings/extensions/DynamicTilesAttrHandler$ParentOrderWrapper;-><init>(Lcom/android/settings/dashboard/DashboardCategory;I)V

    return-object v7

    .line 251
    .restart local v1    # "isFirst":Z
    .restart local v2    # "lookNext":Z
    .restart local v4    # "orderPriority":I
    .restart local v6    # "tile":Lcom/android/settings/dashboard/DashboardTile;
    :cond_2
    iget v7, p0, Lcom/motorola/settings/extensions/DynamicTilesAttrHandler;->mOrderPriority:I

    if-ne v7, v4, :cond_0

    .line 252
    iget-object v7, p0, Lcom/motorola/settings/extensions/DynamicTilesAttrHandler;->mTitle:Ljava/lang/CharSequence;

    if-eqz v7, :cond_0

    iget-object v7, v6, Lcom/android/settings/dashboard/DashboardTile;->title:Ljava/lang/CharSequence;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/motorola/settings/extensions/DynamicTilesAttrHandler;->mTitle:Ljava/lang/CharSequence;

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v8, v6, Lcom/android/settings/dashboard/DashboardTile;->title:Ljava/lang/CharSequence;

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v7

    if-gez v7, :cond_0

    .line 254
    const/4 v2, 0x1

    goto :goto_1

    .line 238
    .end local v1    # "isFirst":Z
    .end local v4    # "orderPriority":I
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public inflate(Landroid/content/Context;Ljava/util/List;)V
    .locals 20
    .param p1, "hostContext"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/dashboard/DashboardCategory;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 30
    .local p2, "targetTiles":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/dashboard/DashboardCategory;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/settings/extensions/DynamicTilesAttrHandler;->mRemoveIdNames:[Ljava/lang/String;

    move-object/from16 v16, v0

    if-eqz v16, :cond_5

    .line 31
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/motorola/settings/extensions/DynamicTilesAttrHandler;->mRemoveIdNames:[Ljava/lang/String;

    .local v4, "arr$":[Ljava/lang/String;
    array-length v9, v4

    .local v9, "len$":I
    const/4 v7, 0x0

    .local v7, "i$":I
    move v8, v7

    .end local v7    # "i$":I
    .local v8, "i$":I
    :goto_0
    if-ge v8, v9, :cond_5

    aget-object v13, v4, v8

    .line 32
    .local v13, "name":Ljava/lang/String;
    const-string v16, "id"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-static {v0, v13, v1}, Lcom/motorola/settings/extensions/DynamicTilesAttrHandler;->getResIndentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v16

    move/from16 v0, v16

    int-to-long v10, v0

    .line 33
    .local v10, "id":J
    const-wide/16 v16, 0x0

    cmp-long v16, v10, v16

    if-eqz v16, :cond_4

    .line 34
    const/4 v6, 0x0

    .line 35
    .local v6, "found":Z
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .end local v8    # "i$":I
    .local v7, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settings/dashboard/DashboardCategory;

    .line 36
    .local v5, "category":Lcom/android/settings/dashboard/DashboardCategory;
    invoke-virtual {v5}, Lcom/android/settings/dashboard/DashboardCategory;->getTilesCount()I

    move-result v16

    add-int/lit8 v12, v16, -0x1

    .line 37
    .local v12, "n":I
    :goto_1
    if-ltz v12, :cond_1

    .line 38
    invoke-virtual {v5, v12}, Lcom/android/settings/dashboard/DashboardCategory;->getTile(I)Lcom/android/settings/dashboard/DashboardTile;

    move-result-object v15

    .line 39
    .local v15, "tile":Lcom/android/settings/dashboard/DashboardTile;
    iget-wide v0, v15, Lcom/android/settings/dashboard/DashboardTile;->id:J

    move-wide/from16 v16, v0

    cmp-long v16, v10, v16

    if-nez v16, :cond_3

    .line 40
    invoke-virtual {v5, v12}, Lcom/android/settings/dashboard/DashboardCategory;->removeTile(I)V

    .line 41
    const/4 v6, 0x1

    .line 46
    .end local v15    # "tile":Lcom/android/settings/dashboard/DashboardTile;
    :cond_1
    if-eqz v6, :cond_0

    .line 31
    .end local v5    # "category":Lcom/android/settings/dashboard/DashboardCategory;
    .end local v6    # "found":Z
    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v12    # "n":I
    :cond_2
    :goto_2
    add-int/lit8 v7, v8, 0x1

    .local v7, "i$":I
    move v8, v7

    .end local v7    # "i$":I
    .restart local v8    # "i$":I
    goto :goto_0

    .line 44
    .end local v8    # "i$":I
    .restart local v5    # "category":Lcom/android/settings/dashboard/DashboardCategory;
    .restart local v6    # "found":Z
    .local v7, "i$":Ljava/util/Iterator;
    .restart local v12    # "n":I
    .restart local v15    # "tile":Lcom/android/settings/dashboard/DashboardTile;
    :cond_3
    add-int/lit8 v12, v12, -0x1

    .line 45
    goto :goto_1

    .line 51
    .end local v5    # "category":Lcom/android/settings/dashboard/DashboardCategory;
    .end local v6    # "found":Z
    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v12    # "n":I
    .end local v15    # "tile":Lcom/android/settings/dashboard/DashboardTile;
    .restart local v8    # "i$":I
    :cond_4
    sget-object v16, Lcom/motorola/settings/extensions/DynamicTilesAttrHandler;->TAG:Ljava/lang/String;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " not found"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 56
    .end local v4    # "arr$":[Ljava/lang/String;
    .end local v8    # "i$":I
    .end local v9    # "len$":I
    .end local v10    # "id":J
    .end local v13    # "name":Ljava/lang/String;
    :cond_5
    const/4 v14, 0x0

    .line 57
    .local v14, "parentwrapper":Lcom/motorola/settings/extensions/DynamicTilesAttrHandler$ParentOrderWrapper;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/settings/extensions/DynamicTilesAttrHandler;->mRepalceIdName:Ljava/lang/CharSequence;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_8

    .line 58
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/settings/extensions/DynamicTilesAttrHandler;->mRepalceIdName:Ljava/lang/CharSequence;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v16

    const-string v17, "id"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    invoke-static {v0, v1, v2}, Lcom/motorola/settings/extensions/DynamicTilesAttrHandler;->getResIndentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    .line 60
    .local v10, "id":I
    if-eqz v10, :cond_f

    .line 61
    const/4 v6, 0x0

    .line 62
    .restart local v6    # "found":Z
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .restart local v7    # "i$":Ljava/util/Iterator;
    :cond_6
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_8

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settings/dashboard/DashboardCategory;

    .line 63
    .restart local v5    # "category":Lcom/android/settings/dashboard/DashboardCategory;
    invoke-virtual {v5}, Lcom/android/settings/dashboard/DashboardCategory;->getTilesCount()I

    move-result v16

    add-int/lit8 v12, v16, -0x1

    .line 64
    .restart local v12    # "n":I
    :goto_3
    if-ltz v12, :cond_7

    .line 65
    invoke-virtual {v5, v12}, Lcom/android/settings/dashboard/DashboardCategory;->getTile(I)Lcom/android/settings/dashboard/DashboardTile;

    move-result-object v15

    .line 66
    .restart local v15    # "tile":Lcom/android/settings/dashboard/DashboardTile;
    int-to-long v0, v10

    move-wide/from16 v16, v0

    iget-wide v0, v15, Lcom/android/settings/dashboard/DashboardTile;->id:J

    move-wide/from16 v18, v0

    cmp-long v16, v16, v18

    if-nez v16, :cond_e

    .line 67
    invoke-virtual {v5, v12}, Lcom/android/settings/dashboard/DashboardCategory;->removeTile(I)V

    .line 68
    const/4 v6, 0x1

    .line 69
    new-instance v14, Lcom/motorola/settings/extensions/DynamicTilesAttrHandler$ParentOrderWrapper;

    .end local v14    # "parentwrapper":Lcom/motorola/settings/extensions/DynamicTilesAttrHandler$ParentOrderWrapper;
    invoke-direct {v14, v5, v12}, Lcom/motorola/settings/extensions/DynamicTilesAttrHandler$ParentOrderWrapper;-><init>(Lcom/android/settings/dashboard/DashboardCategory;I)V

    .line 74
    .end local v15    # "tile":Lcom/android/settings/dashboard/DashboardTile;
    .restart local v14    # "parentwrapper":Lcom/motorola/settings/extensions/DynamicTilesAttrHandler$ParentOrderWrapper;
    :cond_7
    if-eqz v6, :cond_6

    .line 82
    .end local v5    # "category":Lcom/android/settings/dashboard/DashboardCategory;
    .end local v6    # "found":Z
    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v10    # "id":I
    .end local v12    # "n":I
    :cond_8
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/settings/extensions/DynamicTilesAttrHandler;->mTitle:Ljava/lang/CharSequence;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_d

    .line 83
    new-instance v15, Lcom/android/settings/dashboard/DashboardTile;

    invoke-direct {v15}, Lcom/android/settings/dashboard/DashboardTile;-><init>()V

    .line 84
    .restart local v15    # "tile":Lcom/android/settings/dashboard/DashboardTile;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/settings/extensions/DynamicTilesAttrHandler;->mTitle:Ljava/lang/CharSequence;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iput-object v0, v15, Lcom/android/settings/dashboard/DashboardTile;->title:Ljava/lang/CharSequence;

    .line 85
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/settings/extensions/DynamicTilesAttrHandler;->mSummary:Ljava/lang/CharSequence;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iput-object v0, v15, Lcom/android/settings/dashboard/DashboardTile;->summary:Ljava/lang/CharSequence;

    .line 86
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/settings/extensions/DynamicTilesAttrHandler;->mIntent:Landroid/content/Intent;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iput-object v0, v15, Lcom/android/settings/dashboard/DashboardTile;->intent:Landroid/content/Intent;

    .line 87
    iget-object v0, v15, Lcom/android/settings/dashboard/DashboardTile;->extras:Landroid/os/Bundle;

    move-object/from16 v16, v0

    if-nez v16, :cond_9

    .line 88
    new-instance v16, Landroid/os/Bundle;

    invoke-direct/range {v16 .. v16}, Landroid/os/Bundle;-><init>()V

    move-object/from16 v0, v16

    iput-object v0, v15, Lcom/android/settings/dashboard/DashboardTile;->extras:Landroid/os/Bundle;

    .line 91
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/settings/extensions/DynamicTilesAttrHandler;->mIconIdName:Ljava/lang/CharSequence;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_a

    .line 92
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/settings/extensions/DynamicTilesAttrHandler;->mIconIdName:Ljava/lang/CharSequence;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v16

    const-string v17, "drawable"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    invoke-static {v0, v1, v2}, Lcom/motorola/settings/extensions/DynamicTilesAttrHandler;->getResIndentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    .line 93
    .restart local v10    # "id":I
    if-eqz v10, :cond_a

    .line 94
    iput v10, v15, Lcom/android/settings/dashboard/DashboardTile;->iconRes:I

    .line 97
    .end local v10    # "id":I
    :cond_a
    if-nez v14, :cond_b

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v16

    if-lez v16, :cond_b

    .line 98
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/motorola/settings/extensions/DynamicTilesAttrHandler;->mOrderFirst:Z

    move/from16 v16, v0

    if-eqz v16, :cond_10

    .line 99
    iget-object v0, v15, Lcom/android/settings/dashboard/DashboardTile;->extras:Landroid/os/Bundle;

    move-object/from16 v16, v0

    const-string v17, "orderFirst"

    const/16 v18, 0x1

    invoke-virtual/range {v16 .. v18}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 100
    iget-object v0, v15, Lcom/android/settings/dashboard/DashboardTile;->extras:Landroid/os/Bundle;

    move-object/from16 v16, v0

    const-string v17, "orderPriority"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/motorola/settings/extensions/DynamicTilesAttrHandler;->mOrderPriority:I

    move/from16 v18, v0

    invoke-virtual/range {v16 .. v18}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 102
    invoke-direct/range {p0 .. p2}, Lcom/motorola/settings/extensions/DynamicTilesAttrHandler;->getOrderFirstByPriority(Landroid/content/Context;Ljava/util/List;)Lcom/motorola/settings/extensions/DynamicTilesAttrHandler$ParentOrderWrapper;

    move-result-object v14

    .line 117
    :cond_b
    :goto_5
    if-nez v14, :cond_c

    .line 120
    new-instance v14, Lcom/motorola/settings/extensions/DynamicTilesAttrHandler$ParentOrderWrapper;

    .end local v14    # "parentwrapper":Lcom/motorola/settings/extensions/DynamicTilesAttrHandler$ParentOrderWrapper;
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v16

    add-int/lit8 v16, v16, -0x1

    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/settings/dashboard/DashboardCategory;

    const/16 v17, -0x1

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-direct {v14, v0, v1}, Lcom/motorola/settings/extensions/DynamicTilesAttrHandler$ParentOrderWrapper;-><init>(Lcom/android/settings/dashboard/DashboardCategory;I)V

    .line 123
    .restart local v14    # "parentwrapper":Lcom/motorola/settings/extensions/DynamicTilesAttrHandler$ParentOrderWrapper;
    :cond_c
    iget v0, v14, Lcom/motorola/settings/extensions/DynamicTilesAttrHandler$ParentOrderWrapper;->order:I

    move/from16 v16, v0

    if-ltz v16, :cond_12

    iget v0, v14, Lcom/motorola/settings/extensions/DynamicTilesAttrHandler$ParentOrderWrapper;->order:I

    move/from16 v16, v0

    iget-object v0, v14, Lcom/motorola/settings/extensions/DynamicTilesAttrHandler$ParentOrderWrapper;->parent:Lcom/android/settings/dashboard/DashboardCategory;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/settings/dashboard/DashboardCategory;->getTilesCount()I

    move-result v17

    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_12

    .line 124
    iget-object v0, v14, Lcom/motorola/settings/extensions/DynamicTilesAttrHandler$ParentOrderWrapper;->parent:Lcom/android/settings/dashboard/DashboardCategory;

    move-object/from16 v16, v0

    iget v0, v14, Lcom/motorola/settings/extensions/DynamicTilesAttrHandler$ParentOrderWrapper;->order:I

    move/from16 v17, v0

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v0, v1, v15}, Lcom/android/settings/dashboard/DashboardCategory;->addTile(ILcom/android/settings/dashboard/DashboardTile;)V

    .line 129
    .end local v15    # "tile":Lcom/android/settings/dashboard/DashboardTile;
    :cond_d
    :goto_6
    return-void

    .line 72
    .restart local v5    # "category":Lcom/android/settings/dashboard/DashboardCategory;
    .restart local v6    # "found":Z
    .restart local v7    # "i$":Ljava/util/Iterator;
    .restart local v10    # "id":I
    .restart local v12    # "n":I
    .restart local v15    # "tile":Lcom/android/settings/dashboard/DashboardTile;
    :cond_e
    add-int/lit8 v12, v12, -0x1

    .line 73
    goto/16 :goto_3

    .line 79
    .end local v5    # "category":Lcom/android/settings/dashboard/DashboardCategory;
    .end local v6    # "found":Z
    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v12    # "n":I
    .end local v15    # "tile":Lcom/android/settings/dashboard/DashboardTile;
    :cond_f
    sget-object v16, Lcom/motorola/settings/extensions/DynamicTilesAttrHandler;->TAG:Ljava/lang/String;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/settings/extensions/DynamicTilesAttrHandler;->mRepalceIdName:Ljava/lang/CharSequence;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " not found"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 103
    .end local v10    # "id":I
    .restart local v15    # "tile":Lcom/android/settings/dashboard/DashboardTile;
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/settings/extensions/DynamicTilesAttrHandler;->mOrderAboveIdName:Ljava/lang/CharSequence;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_11

    .line 104
    iget-object v0, v15, Lcom/android/settings/dashboard/DashboardTile;->extras:Landroid/os/Bundle;

    move-object/from16 v16, v0

    const-string v17, "orderRefKey"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/settings/extensions/DynamicTilesAttrHandler;->mOrderAboveIdName:Ljava/lang/CharSequence;

    move-object/from16 v18, v0

    invoke-virtual/range {v16 .. v18}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 106
    iget-object v0, v15, Lcom/android/settings/dashboard/DashboardTile;->extras:Landroid/os/Bundle;

    move-object/from16 v16, v0

    const-string v17, "orderPriority"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/motorola/settings/extensions/DynamicTilesAttrHandler;->mOrderPriority:I

    move/from16 v18, v0

    invoke-virtual/range {v16 .. v18}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 108
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/settings/extensions/DynamicTilesAttrHandler;->mOrderAboveIdName:Ljava/lang/CharSequence;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v16

    move-object/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/motorola/settings/extensions/DynamicTilesAttrHandler;->getOrderAboveByIdName(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/util/List;)Lcom/motorola/settings/extensions/DynamicTilesAttrHandler$ParentOrderWrapper;

    move-result-object v14

    goto/16 :goto_5

    .line 109
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/settings/extensions/DynamicTilesAttrHandler;->mOrderBelowIdName:Ljava/lang/CharSequence;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_b

    .line 110
    iget-object v0, v15, Lcom/android/settings/dashboard/DashboardTile;->extras:Landroid/os/Bundle;

    move-object/from16 v16, v0

    const-string v17, "orderRefKey"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/settings/extensions/DynamicTilesAttrHandler;->mOrderBelowIdName:Ljava/lang/CharSequence;

    move-object/from16 v18, v0

    invoke-virtual/range {v16 .. v18}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 112
    iget-object v0, v15, Lcom/android/settings/dashboard/DashboardTile;->extras:Landroid/os/Bundle;

    move-object/from16 v16, v0

    const-string v17, "orderPriority"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/motorola/settings/extensions/DynamicTilesAttrHandler;->mOrderPriority:I

    move/from16 v18, v0

    invoke-virtual/range {v16 .. v18}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 114
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/settings/extensions/DynamicTilesAttrHandler;->mOrderBelowIdName:Ljava/lang/CharSequence;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v16

    move-object/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/motorola/settings/extensions/DynamicTilesAttrHandler;->getOrderBelowByIdName(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/util/List;)Lcom/motorola/settings/extensions/DynamicTilesAttrHandler$ParentOrderWrapper;

    move-result-object v14

    goto/16 :goto_5

    .line 126
    :cond_12
    iget-object v0, v14, Lcom/motorola/settings/extensions/DynamicTilesAttrHandler$ParentOrderWrapper;->parent:Lcom/android/settings/dashboard/DashboardCategory;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Lcom/android/settings/dashboard/DashboardCategory;->addTile(Lcom/android/settings/dashboard/DashboardTile;)V

    goto/16 :goto_6
.end method
