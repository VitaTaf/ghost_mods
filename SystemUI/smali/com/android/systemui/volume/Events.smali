.class public Lcom/android/systemui/volume/Events;
.super Ljava/lang/Object;
.source "Events.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/volume/Events$Callback;
    }
.end annotation


# static fields
.field public static final DISMISS_REASONS:[Ljava/lang/String;

.field private static final EVENT_TAGS:[Ljava/lang/String;

.field public static final SHOW_REASONS:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;

.field public static sCallback:Lcom/android/systemui/volume/Events$Callback;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 32
    const-class v0, Lcom/android/systemui/volume/Events;

    invoke-static {v0}, Lcom/android/systemui/volume/Util;->logTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/volume/Events;->TAG:Ljava/lang/String;

    .line 51
    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "show_dialog"

    aput-object v1, v0, v3

    const-string v1, "dismiss_dialog"

    aput-object v1, v0, v4

    const-string v1, "active_stream_changed"

    aput-object v1, v0, v5

    const-string v1, "expand"

    aput-object v1, v0, v6

    const-string v1, "key"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "collection_started"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "collection_stopped"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "icon_click"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "settings_click"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "touch_level_changed"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "level_changed"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "internal_ringer_mode_changed"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "external_ringer_mode_changed"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "zen_mode_changed"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "suppressor_changed"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "mute_changed"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/systemui/volume/Events;->EVENT_TAGS:[Ljava/lang/String;

    .line 77
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "unknown"

    aput-object v1, v0, v3

    const-string v1, "touch_outside"

    aput-object v1, v0, v4

    const-string v1, "volume_controller"

    aput-object v1, v0, v5

    const-string v1, "timeout"

    aput-object v1, v0, v6

    const-string v1, "screen_off"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "settings_clicked"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "done_clicked"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/systemui/volume/Events;->DISMISS_REASONS:[Ljava/lang/String;

    .line 90
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "unknown"

    aput-object v1, v0, v3

    const-string v1, "volume_changed"

    aput-object v1, v0, v4

    const-string v1, "remote_volume_changed"

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/systemui/volume/Events;->SHOW_REASONS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 186
    return-void
.end method

.method private static iconStateToString(I)Ljava/lang/String;
    .locals 2
    .param p0, "iconState"    # I

    .prologue
    .line 159
    packed-switch p0, :pswitch_data_0

    .line 163
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unknown_state_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 160
    :pswitch_0
    const-string v0, "unmute"

    goto :goto_0

    .line 161
    :pswitch_1
    const-string v0, "mute"

    goto :goto_0

    .line 162
    :pswitch_2
    const-string v0, "vibrate"

    goto :goto_0

    .line 159
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static ringerModeToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "ringerMode"    # I

    .prologue
    .line 168
    packed-switch p0, :pswitch_data_0

    .line 172
    const-string v0, "unknown"

    :goto_0
    return-object v0

    .line 169
    :pswitch_0
    const-string v0, "silent"

    goto :goto_0

    .line 170
    :pswitch_1
    const-string v0, "vibrate"

    goto :goto_0

    .line 171
    :pswitch_2
    const-string v0, "normal"

    goto :goto_0

    .line 168
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static varargs writeEvent(I[Ljava/lang/Object;)V
    .locals 8
    .param p0, "tag"    # I
    .param p1, "list"    # [Ljava/lang/Object;

    .prologue
    const/16 v7, 0x20

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 104
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 105
    .local v2, "time":J
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "writeEvent "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/android/systemui/volume/Events;->EVENT_TAGS:[Ljava/lang/String;

    aget-object v4, v4, p0

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 106
    .local v0, "sb":Ljava/lang/StringBuilder;
    if-eqz p1, :cond_0

    array-length v1, p1

    if-lez v1, :cond_0

    .line 107
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    packed-switch p0, :pswitch_data_0

    .line 142
    :pswitch_0
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 146
    :cond_0
    :goto_0
    sget-object v1, Lcom/android/systemui/volume/Events;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    sget-object v1, Lcom/android/systemui/volume/Events;->sCallback:Lcom/android/systemui/volume/Events$Callback;

    if-eqz v1, :cond_1

    .line 148
    sget-object v1, Lcom/android/systemui/volume/Events;->sCallback:Lcom/android/systemui/volume/Events$Callback;

    invoke-interface {v1, v2, v3, p0, p1}, Lcom/android/systemui/volume/Events$Callback;->writeEvent(JI[Ljava/lang/Object;)V

    .line 150
    :cond_1
    return-void

    .line 110
    :pswitch_1
    sget-object v4, Lcom/android/systemui/volume/Events;->SHOW_REASONS:[Ljava/lang/String;

    aget-object v1, p1, v5

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aget-object v1, v4, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " keyguard="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v4, p1, v6

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 113
    :pswitch_2
    aget-object v1, p1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 116
    :pswitch_3
    sget-object v4, Lcom/android/systemui/volume/Events;->DISMISS_REASONS:[Ljava/lang/String;

    aget-object v1, p1, v5

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aget-object v1, v4, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 119
    :pswitch_4
    aget-object v1, p1, v5

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Landroid/media/AudioSystem;->streamToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 122
    :pswitch_5
    aget-object v1, p1, v5

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Landroid/media/AudioSystem;->streamToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v1, p1, v6

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/android/systemui/volume/Events;->iconStateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 128
    :pswitch_6
    aget-object v1, p1, v5

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Landroid/media/AudioSystem;->streamToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v4, p1, v6

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 133
    :pswitch_7
    aget-object v1, p1, v5

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/android/systemui/volume/Events;->ringerModeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 136
    :pswitch_8
    aget-object v1, p1, v5

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/android/systemui/volume/Events;->zenModeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 139
    :pswitch_9
    aget-object v1, p1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v4, p1, v6

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 108
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_6
        :pswitch_6
        :pswitch_7
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_6
    .end packed-switch
.end method

.method public static writeState(JLcom/android/systemui/volume/VolumeDialogController$State;)V
    .locals 2
    .param p0, "time"    # J
    .param p2, "state"    # Lcom/android/systemui/volume/VolumeDialogController$State;

    .prologue
    .line 153
    sget-object v0, Lcom/android/systemui/volume/Events;->sCallback:Lcom/android/systemui/volume/Events$Callback;

    if-eqz v0, :cond_0

    .line 154
    sget-object v0, Lcom/android/systemui/volume/Events;->sCallback:Lcom/android/systemui/volume/Events$Callback;

    invoke-interface {v0, p0, p1, p2}, Lcom/android/systemui/volume/Events$Callback;->writeState(JLcom/android/systemui/volume/VolumeDialogController$State;)V

    .line 156
    :cond_0
    return-void
.end method

.method private static zenModeToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "zenMode"    # I

    .prologue
    .line 177
    packed-switch p0, :pswitch_data_0

    .line 182
    const-string v0, "unknown"

    :goto_0
    return-object v0

    .line 178
    :pswitch_0
    const-string v0, "off"

    goto :goto_0

    .line 179
    :pswitch_1
    const-string v0, "important_interruptions"

    goto :goto_0

    .line 180
    :pswitch_2
    const-string v0, "alarms"

    goto :goto_0

    .line 181
    :pswitch_3
    const-string v0, "no_interruptions"

    goto :goto_0

    .line 177
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method
