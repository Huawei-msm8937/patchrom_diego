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
    .line 346
    iput-object p1, p0, Landroid/widget/QuickContactBadge$QueryHandler;->this$0:Landroid/widget/QuickContactBadge;

    .line 347
    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 348
    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 16
    .param p1, "token"    # I
    .param p2, "cookie"    # Ljava/lang/Object;
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 352
    const/4 v9, 0x0

    .line 353
    .local v9, "lookupUri":Landroid/net/Uri;
    const/4 v4, 0x0

    .line 354
    .local v4, "createUri":Landroid/net/Uri;
    const/4 v10, 0x0

    .line 355
    .local v10, "trigger":Z
    if-eqz p2, :cond_3

    check-cast p2, Landroid/os/Bundle;

    .end local p2    # "cookie":Ljava/lang/Object;
    move-object/from16 v6, p2

    .line 357
    .local v6, "extras":Landroid/os/Bundle;
    :goto_0
    packed-switch p1, :pswitch_data_0

    .line 397
    :cond_0
    :goto_1
    if-eqz p3, :cond_1

    .line 398
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    .line 402
    :cond_1
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/widget/QuickContactBadge$QueryHandler;->this$0:Landroid/widget/QuickContactBadge;

    # setter for: Landroid/widget/QuickContactBadge;->mContactUri:Landroid/net/Uri;
    invoke-static {v11, v9}, Landroid/widget/QuickContactBadge;->access$002(Landroid/widget/QuickContactBadge;Landroid/net/Uri;)Landroid/net/Uri;

    .line 403
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/widget/QuickContactBadge$QueryHandler;->this$0:Landroid/widget/QuickContactBadge;

    # invokes: Landroid/widget/QuickContactBadge;->onContactUriChanged()V
    invoke-static {v11}, Landroid/widget/QuickContactBadge;->access$100(Landroid/widget/QuickContactBadge;)V

    .line 405
    if-eqz v10, :cond_6

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/widget/QuickContactBadge$QueryHandler;->this$0:Landroid/widget/QuickContactBadge;

    # getter for: Landroid/widget/QuickContactBadge;->mContactUri:Landroid/net/Uri;
    invoke-static {v11}, Landroid/widget/QuickContactBadge;->access$000(Landroid/widget/QuickContactBadge;)Landroid/net/Uri;

    move-result-object v11

    if-eqz v11, :cond_6

    .line 407
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/widget/QuickContactBadge$QueryHandler;->this$0:Landroid/widget/QuickContactBadge;

    invoke-virtual {v11}, Landroid/widget/QuickContactBadge;->getContext()Landroid/content/Context;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/QuickContactBadge$QueryHandler;->this$0:Landroid/widget/QuickContactBadge;

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/QuickContactBadge$QueryHandler;->this$0:Landroid/widget/QuickContactBadge;

    # getter for: Landroid/widget/QuickContactBadge;->mContactUri:Landroid/net/Uri;
    invoke-static {v13}, Landroid/widget/QuickContactBadge;->access$000(Landroid/widget/QuickContactBadge;)Landroid/net/Uri;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/QuickContactBadge$QueryHandler;->this$0:Landroid/widget/QuickContactBadge;

    iget-object v14, v14, Landroid/widget/QuickContactBadge;->mExcludeMimes:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/QuickContactBadge$QueryHandler;->this$0:Landroid/widget/QuickContactBadge;

    # getter for: Landroid/widget/QuickContactBadge;->mPrioritizedMimeType:Ljava/lang/String;
    invoke-static {v15}, Landroid/widget/QuickContactBadge;->access$200(Landroid/widget/QuickContactBadge;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v11, v12, v13, v14, v15}, Landroid/provider/ContactsContract$QuickContact;->showQuickContact(Landroid/content/Context;Landroid/view/View;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    :cond_2
    :goto_2
    return-void

    .line 355
    .end local v6    # "extras":Landroid/os/Bundle;
    .restart local p2    # "cookie":Ljava/lang/Object;
    :cond_3
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    goto :goto_0

    .line 359
    .end local p2    # "cookie":Ljava/lang/Object;
    .restart local v6    # "extras":Landroid/os/Bundle;
    :pswitch_0
    const/4 v10, 0x1

    .line 361
    :try_start_0
    const-string v11, "uri_content"

    invoke-virtual {v6, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_4

    .line 363
    const-string v11, "tel"

    const-string v12, "uri_content"

    invoke-virtual {v6, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    invoke-static {v11, v12, v13}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 369
    :cond_4
    :pswitch_1
    if-eqz p3, :cond_0

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 372
    invoke-static {}, Landroid/common/HwFrameworkFactory;->getHwInnerTelephonyManager()Landroid/telephony/HwInnerTelephonyManager;

    move-result-object v11

    const-string v12, "uri_content"

    invoke-virtual {v6, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p3

    invoke-interface {v11, v12, v0}, Landroid/telephony/HwInnerTelephonyManager;->isCallerInfofixedIndexValid(Ljava/lang/String;Landroid/database/Cursor;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 374
    const/4 v11, 0x0

    move-object/from16 v0, p3

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 375
    .local v2, "contactId":J
    const/4 v11, 0x1

    move-object/from16 v0, p3

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 376
    .local v8, "lookupKey":Ljava/lang/String;
    invoke-static {v2, v3, v8}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    .line 377
    goto/16 :goto_1

    .line 382
    .end local v2    # "contactId":J
    .end local v8    # "lookupKey":Ljava/lang/String;
    :pswitch_2
    const/4 v10, 0x1

    .line 383
    const-string v11, "mailto"

    const-string v12, "uri_content"

    invoke-virtual {v6, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    invoke-static {v11, v12, v13}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 388
    :pswitch_3
    if-eqz p3, :cond_0

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 389
    const/4 v11, 0x0

    move-object/from16 v0, p3

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 390
    .restart local v2    # "contactId":J
    const/4 v11, 0x1

    move-object/from16 v0, p3

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 391
    .restart local v8    # "lookupKey":Ljava/lang/String;
    invoke-static {v2, v3, v8}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v9

    goto/16 :goto_1

    .line 397
    .end local v2    # "contactId":J
    .end local v8    # "lookupKey":Ljava/lang/String;
    :catchall_0
    move-exception v11

    if-eqz p3, :cond_5

    .line 398
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v11

    .line 409
    :cond_6
    if-eqz v4, :cond_2

    .line 411
    new-instance v7, Landroid/content/Intent;

    const-string v11, "com.android.contacts.action.SHOW_OR_CREATE_CONTACT"

    invoke-direct {v7, v11, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 412
    .local v7, "intent":Landroid/content/Intent;
    if-eqz v6, :cond_7

    .line 413
    const-string v11, "uri_content"

    invoke-virtual {v6, v11}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 414
    invoke-virtual {v7, v6}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 418
    :cond_7
    :try_start_1
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/widget/QuickContactBadge$QueryHandler;->this$0:Landroid/widget/QuickContactBadge;

    invoke-virtual {v11}, Landroid/widget/QuickContactBadge;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11, v7}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2

    .line 419
    :catch_0
    move-exception v5

    .line 421
    .local v5, "e":Landroid/content/ActivityNotFoundException;
    const-string v11, "QuickContactBadge"

    const-string v12, "Activity not found for intent"

    invoke-static {v11, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 357
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method
