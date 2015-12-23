.class Landroid/widget/QuickContactBadge$QueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "QuickContactBadge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/QuickContactBadge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/QuickContactBadge;


# direct methods
.method public constructor <init>(Landroid/widget/QuickContactBadge;Landroid/content/ContentResolver;)V
    .locals 0
    .param p2, "cr"    # Landroid/content/ContentResolver;

    .prologue
    .line 330
    iput-object p1, p0, Landroid/widget/QuickContactBadge$QueryHandler;->this$0:Landroid/widget/QuickContactBadge;

    .line 331
    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 332
    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 15
    .param p1, "token"    # I
    .param p2, "cookie"    # Ljava/lang/Object;
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 336
    const/4 v9, 0x0

    .line 337
    .local v9, "lookupUri":Landroid/net/Uri;
    const/4 v3, 0x0

    .line 338
    .local v3, "createUri":Landroid/net/Uri;
    const/4 v10, 0x0

    .line 339
    .local v10, "trigger":Z
    if-eqz p2, :cond_3

    check-cast p2, Landroid/os/Bundle;

    .end local p2    # "cookie":Ljava/lang/Object;
    move-object/from16 v6, p2

    .line 341
    .local v6, "extras":Landroid/os/Bundle;
    :goto_0
    packed-switch p1, :pswitch_data_0

    .line 375
    :cond_0
    :goto_1
    if-eqz p3, :cond_1

    .line 376
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    .line 380
    :cond_1
    iget-object v11, p0, Landroid/widget/QuickContactBadge$QueryHandler;->this$0:Landroid/widget/QuickContactBadge;

    # setter for: Landroid/widget/QuickContactBadge;->mContactUri:Landroid/net/Uri;
    invoke-static {v11, v9}, Landroid/widget/QuickContactBadge;->access$002(Landroid/widget/QuickContactBadge;Landroid/net/Uri;)Landroid/net/Uri;

    .line 381
    iget-object v11, p0, Landroid/widget/QuickContactBadge$QueryHandler;->this$0:Landroid/widget/QuickContactBadge;

    # invokes: Landroid/widget/QuickContactBadge;->onContactUriChanged()V
    invoke-static {v11}, Landroid/widget/QuickContactBadge;->access$100(Landroid/widget/QuickContactBadge;)V

    .line 383
    if-eqz v10, :cond_6

    if-eqz v9, :cond_6

    .line 385
    iget-object v11, p0, Landroid/widget/QuickContactBadge$QueryHandler;->this$0:Landroid/widget/QuickContactBadge;

    invoke-virtual {v11}, Landroid/widget/QuickContactBadge;->getContext()Landroid/content/Context;

    move-result-object v11

    iget-object v12, p0, Landroid/widget/QuickContactBadge$QueryHandler;->this$0:Landroid/widget/QuickContactBadge;

    const/4 v13, 0x3

    iget-object v14, p0, Landroid/widget/QuickContactBadge$QueryHandler;->this$0:Landroid/widget/QuickContactBadge;

    iget-object v14, v14, Landroid/widget/QuickContactBadge;->mExcludeMimes:[Ljava/lang/String;

    invoke-static {v11, v12, v9, v13, v14}, Landroid/provider/ContactsContract$QuickContact;->showQuickContact(Landroid/content/Context;Landroid/view/View;Landroid/net/Uri;I[Ljava/lang/String;)V

    .line 396
    :cond_2
    :goto_2
    return-void

    .line 339
    .end local v6    # "extras":Landroid/os/Bundle;
    .restart local p2    # "cookie":Ljava/lang/Object;
    :cond_3
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    goto :goto_0

    .line 343
    .end local p2    # "cookie":Ljava/lang/Object;
    .restart local v6    # "extras":Landroid/os/Bundle;
    :pswitch_0
    :try_start_0
    const-string/jumbo v11, "uri_content"

    invoke-virtual {v6, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 344
    .local v2, "contactExtra":Ljava/lang/String;
    if-eqz v2, :cond_4

    .line 345
    const/4 v10, 0x1

    .line 346
    const-string/jumbo v11, "tel"

    const/4 v12, 0x0

    invoke-static {v11, v2, v12}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 351
    .end local v2    # "contactExtra":Ljava/lang/String;
    :cond_4
    :pswitch_1
    if-eqz p3, :cond_0

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 352
    const/4 v11, 0x0

    move-object/from16 v0, p3

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 353
    .local v4, "contactId":J
    const/4 v11, 0x1

    move-object/from16 v0, p3

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 354
    .local v8, "lookupKey":Ljava/lang/String;
    invoke-static {v4, v5, v8}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    .line 355
    goto :goto_1

    .line 360
    .end local v4    # "contactId":J
    .end local v8    # "lookupKey":Ljava/lang/String;
    :pswitch_2
    const/4 v10, 0x1

    .line 361
    const-string/jumbo v11, "mailto"

    const-string/jumbo v12, "uri_content"

    invoke-virtual {v6, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    invoke-static {v11, v12, v13}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 366
    :pswitch_3
    if-eqz p3, :cond_0

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 367
    const/4 v11, 0x0

    move-object/from16 v0, p3

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 368
    .restart local v4    # "contactId":J
    const/4 v11, 0x1

    move-object/from16 v0, p3

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 369
    .restart local v8    # "lookupKey":Ljava/lang/String;
    invoke-static {v4, v5, v8}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v9

    goto/16 :goto_1

    .line 375
    .end local v4    # "contactId":J
    .end local v8    # "lookupKey":Ljava/lang/String;
    :catchall_0
    move-exception v11

    if-eqz p3, :cond_5

    .line 376
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v11

    .line 387
    :cond_6
    if-eqz v3, :cond_2

    .line 389
    new-instance v7, Landroid/content/Intent;

    const-string v11, "com.android.contacts.action.SHOW_OR_CREATE_CONTACT"

    invoke-direct {v7, v11, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 390
    .local v7, "intent":Landroid/content/Intent;
    if-eqz v6, :cond_7

    .line 391
    const-string/jumbo v11, "uri_content"

    invoke-virtual {v6, v11}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 392
    invoke-virtual {v7, v6}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 394
    :cond_7
    iget-object v11, p0, Landroid/widget/QuickContactBadge$QueryHandler;->this$0:Landroid/widget/QuickContactBadge;

    invoke-virtual {v11}, Landroid/widget/QuickContactBadge;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11, v7}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_2

    .line 341
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method
