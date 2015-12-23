.class public abstract Lcom/motorola/slpc/IModalityService$Stub;
.super Landroid/os/Binder;
.source "IModalityService.java"

# interfaces
.implements Lcom/motorola/slpc/IModalityService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/slpc/IModalityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/slpc/IModalityService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.motorola.slpc.IModalityService"

.field static final TRANSACTION_addAccumulatedMovementListener:I = 0xf

.field static final TRANSACTION_addModalityListener:I = 0x4

.field static final TRANSACTION_addMovementListener:I = 0xd

.field static final TRANSACTION_addOrientationListener:I = 0x7

.field static final TRANSACTION_addStatusListener:I = 0x1

.field static final TRANSACTION_addStowedListener:I = 0xa

.field static final TRANSACTION_addVehicleListener:I = 0x13

.field static final TRANSACTION_getAccumulatedDistance:I = 0x12

.field static final TRANSACTION_getAccumulatedTime:I = 0x11

.field static final TRANSACTION_getModality:I = 0x6

.field static final TRANSACTION_getOrientation:I = 0x9

.field static final TRANSACTION_getStatus:I = 0x3

.field static final TRANSACTION_getStowed:I = 0xc

.field static final TRANSACTION_removeAccumulatedMovementListener:I = 0x10

.field static final TRANSACTION_removeModalityListener:I = 0x5

.field static final TRANSACTION_removeMovementListener:I = 0xe

.field static final TRANSACTION_removeOrientationListener:I = 0x8

.field static final TRANSACTION_removeStatusListener:I = 0x2

.field static final TRANSACTION_removeStowedListener:I = 0xb

.field static final TRANSACTION_removeVehicleListener:I = 0x14


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string v0, "com.motorola.slpc.IModalityService"

    invoke-virtual {p0, p0, v0}, Lcom/motorola/slpc/IModalityService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/motorola/slpc/IModalityService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 26
    if-nez p0, :cond_0

    .line 27
    const/4 v0, 0x0

    .line 33
    :goto_0
    return-object v0

    .line 29
    :cond_0
    const-string v1, "com.motorola.slpc.IModalityService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/motorola/slpc/IModalityService;

    if-eqz v1, :cond_1

    .line 31
    check-cast v0, Lcom/motorola/slpc/IModalityService;

    goto :goto_0

    .line 33
    :cond_1
    new-instance v0, Lcom/motorola/slpc/IModalityService$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/motorola/slpc/IModalityService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 37
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 16
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 41
    sparse-switch p1, :sswitch_data_0

    .line 286
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    :goto_0
    return v3

    .line 45
    :sswitch_0
    const-string v3, "com.motorola.slpc.IModalityService"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 46
    const/4 v3, 0x1

    goto :goto_0

    .line 50
    :sswitch_1
    const-string v3, "com.motorola.slpc.IModalityService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/motorola/slpc/IStatusListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/motorola/slpc/IStatusListener;

    move-result-object v4

    .line 53
    .local v4, "_arg0":Lcom/motorola/slpc/IStatusListener;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/motorola/slpc/IModalityService$Stub;->addStatusListener(Lcom/motorola/slpc/IStatusListener;)Z

    move-result v2

    .line 54
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 55
    if-eqz v2, :cond_0

    const/4 v3, 0x1

    :goto_1
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 56
    const/4 v3, 0x1

    goto :goto_0

    .line 55
    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    .line 60
    .end local v2    # "_result":Z
    .end local v4    # "_arg0":Lcom/motorola/slpc/IStatusListener;
    :sswitch_2
    const-string v3, "com.motorola.slpc.IModalityService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 62
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/motorola/slpc/IStatusListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/motorola/slpc/IStatusListener;

    move-result-object v4

    .line 63
    .restart local v4    # "_arg0":Lcom/motorola/slpc/IStatusListener;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/motorola/slpc/IModalityService$Stub;->removeStatusListener(Lcom/motorola/slpc/IStatusListener;)V

    .line 64
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 65
    const/4 v3, 0x1

    goto :goto_0

    .line 69
    .end local v4    # "_arg0":Lcom/motorola/slpc/IStatusListener;
    :sswitch_3
    const-string v3, "com.motorola.slpc.IModalityService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 70
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/slpc/IModalityService$Stub;->getStatus()I

    move-result v2

    .line 71
    .local v2, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 72
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 73
    const/4 v3, 0x1

    goto :goto_0

    .line 77
    .end local v2    # "_result":I
    :sswitch_4
    const-string v3, "com.motorola.slpc.IModalityService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 79
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/motorola/slpc/IModalityListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/motorola/slpc/IModalityListener;

    move-result-object v4

    .line 81
    .local v4, "_arg0":Lcom/motorola/slpc/IModalityListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 83
    .local v5, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .line 85
    .local v6, "_arg2":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v8

    .local v8, "_arg3":J
    move-object/from16 v3, p0

    .line 86
    invoke-virtual/range {v3 .. v9}, Lcom/motorola/slpc/IModalityService$Stub;->addModalityListener(Lcom/motorola/slpc/IModalityListener;IJJ)Z

    move-result v2

    .line 87
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 88
    if-eqz v2, :cond_1

    const/4 v3, 0x1

    :goto_2
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 89
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 88
    :cond_1
    const/4 v3, 0x0

    goto :goto_2

    .line 93
    .end local v2    # "_result":Z
    .end local v4    # "_arg0":Lcom/motorola/slpc/IModalityListener;
    .end local v5    # "_arg1":I
    .end local v6    # "_arg2":J
    .end local v8    # "_arg3":J
    :sswitch_5
    const-string v3, "com.motorola.slpc.IModalityService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 95
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/motorola/slpc/IModalityListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/motorola/slpc/IModalityListener;

    move-result-object v4

    .line 97
    .restart local v4    # "_arg0":Lcom/motorola/slpc/IModalityListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 98
    .restart local v5    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/motorola/slpc/IModalityService$Stub;->removeModalityListener(Lcom/motorola/slpc/IModalityListener;I)V

    .line 99
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 100
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 104
    .end local v4    # "_arg0":Lcom/motorola/slpc/IModalityListener;
    .end local v5    # "_arg1":I
    :sswitch_6
    const-string v3, "com.motorola.slpc.IModalityService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 105
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/slpc/IModalityService$Stub;->getModality()Lcom/motorola/slpc/Transition;

    move-result-object v2

    .line 106
    .local v2, "_result":Lcom/motorola/slpc/Transition;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 107
    if-eqz v2, :cond_2

    .line 108
    const/4 v3, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 109
    const/4 v3, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v2, v0, v3}, Lcom/motorola/slpc/Transition;->writeToParcel(Landroid/os/Parcel;I)V

    .line 114
    :goto_3
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 112
    :cond_2
    const/4 v3, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_3

    .line 118
    .end local v2    # "_result":Lcom/motorola/slpc/Transition;
    :sswitch_7
    const-string v3, "com.motorola.slpc.IModalityService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 120
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/motorola/slpc/IOrientationListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/motorola/slpc/IOrientationListener;

    move-result-object v4

    .line 122
    .local v4, "_arg0":Lcom/motorola/slpc/IOrientationListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 124
    .restart local v5    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .line 126
    .restart local v6    # "_arg2":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v8

    .restart local v8    # "_arg3":J
    move-object/from16 v3, p0

    .line 127
    invoke-virtual/range {v3 .. v9}, Lcom/motorola/slpc/IModalityService$Stub;->addOrientationListener(Lcom/motorola/slpc/IOrientationListener;IJJ)Z

    move-result v2

    .line 128
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 129
    if-eqz v2, :cond_3

    const/4 v3, 0x1

    :goto_4
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 130
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 129
    :cond_3
    const/4 v3, 0x0

    goto :goto_4

    .line 134
    .end local v2    # "_result":Z
    .end local v4    # "_arg0":Lcom/motorola/slpc/IOrientationListener;
    .end local v5    # "_arg1":I
    .end local v6    # "_arg2":J
    .end local v8    # "_arg3":J
    :sswitch_8
    const-string v3, "com.motorola.slpc.IModalityService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 136
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/motorola/slpc/IOrientationListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/motorola/slpc/IOrientationListener;

    move-result-object v4

    .line 138
    .restart local v4    # "_arg0":Lcom/motorola/slpc/IOrientationListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 139
    .restart local v5    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/motorola/slpc/IModalityService$Stub;->removeOrientationListener(Lcom/motorola/slpc/IOrientationListener;I)V

    .line 140
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 141
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 145
    .end local v4    # "_arg0":Lcom/motorola/slpc/IOrientationListener;
    .end local v5    # "_arg1":I
    :sswitch_9
    const-string v3, "com.motorola.slpc.IModalityService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 146
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/slpc/IModalityService$Stub;->getOrientation()Lcom/motorola/slpc/Transition;

    move-result-object v2

    .line 147
    .local v2, "_result":Lcom/motorola/slpc/Transition;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 148
    if-eqz v2, :cond_4

    .line 149
    const/4 v3, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 150
    const/4 v3, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v2, v0, v3}, Lcom/motorola/slpc/Transition;->writeToParcel(Landroid/os/Parcel;I)V

    .line 155
    :goto_5
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 153
    :cond_4
    const/4 v3, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_5

    .line 159
    .end local v2    # "_result":Lcom/motorola/slpc/Transition;
    :sswitch_a
    const-string v3, "com.motorola.slpc.IModalityService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 161
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/motorola/slpc/IStowedListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/motorola/slpc/IStowedListener;

    move-result-object v4

    .line 163
    .local v4, "_arg0":Lcom/motorola/slpc/IStowedListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 165
    .restart local v5    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .line 167
    .restart local v6    # "_arg2":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v8

    .restart local v8    # "_arg3":J
    move-object/from16 v3, p0

    .line 168
    invoke-virtual/range {v3 .. v9}, Lcom/motorola/slpc/IModalityService$Stub;->addStowedListener(Lcom/motorola/slpc/IStowedListener;IJJ)Z

    move-result v2

    .line 169
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 170
    if-eqz v2, :cond_5

    const/4 v3, 0x1

    :goto_6
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 171
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 170
    :cond_5
    const/4 v3, 0x0

    goto :goto_6

    .line 175
    .end local v2    # "_result":Z
    .end local v4    # "_arg0":Lcom/motorola/slpc/IStowedListener;
    .end local v5    # "_arg1":I
    .end local v6    # "_arg2":J
    .end local v8    # "_arg3":J
    :sswitch_b
    const-string v3, "com.motorola.slpc.IModalityService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 177
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/motorola/slpc/IStowedListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/motorola/slpc/IStowedListener;

    move-result-object v4

    .line 179
    .restart local v4    # "_arg0":Lcom/motorola/slpc/IStowedListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 180
    .restart local v5    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/motorola/slpc/IModalityService$Stub;->removeStowedListener(Lcom/motorola/slpc/IStowedListener;I)V

    .line 181
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 182
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 186
    .end local v4    # "_arg0":Lcom/motorola/slpc/IStowedListener;
    .end local v5    # "_arg1":I
    :sswitch_c
    const-string v3, "com.motorola.slpc.IModalityService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 187
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/slpc/IModalityService$Stub;->getStowed()Lcom/motorola/slpc/Transition;

    move-result-object v2

    .line 188
    .local v2, "_result":Lcom/motorola/slpc/Transition;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 189
    if-eqz v2, :cond_6

    .line 190
    const/4 v3, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 191
    const/4 v3, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v2, v0, v3}, Lcom/motorola/slpc/Transition;->writeToParcel(Landroid/os/Parcel;I)V

    .line 196
    :goto_7
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 194
    :cond_6
    const/4 v3, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_7

    .line 200
    .end local v2    # "_result":Lcom/motorola/slpc/Transition;
    :sswitch_d
    const-string v3, "com.motorola.slpc.IModalityService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 202
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/motorola/slpc/IMovementListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/motorola/slpc/IMovementListener;

    move-result-object v4

    .line 204
    .local v4, "_arg0":Lcom/motorola/slpc/IMovementListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v12

    .line 206
    .local v12, "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .restart local v6    # "_arg2":J
    move-object/from16 v10, p0

    move-object v11, v4

    move-wide v14, v6

    .line 207
    invoke-virtual/range {v10 .. v15}, Lcom/motorola/slpc/IModalityService$Stub;->addMovementListener(Lcom/motorola/slpc/IMovementListener;JJ)Z

    move-result v2

    .line 208
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 209
    if-eqz v2, :cond_7

    const/4 v3, 0x1

    :goto_8
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 210
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 209
    :cond_7
    const/4 v3, 0x0

    goto :goto_8

    .line 214
    .end local v2    # "_result":Z
    .end local v4    # "_arg0":Lcom/motorola/slpc/IMovementListener;
    .end local v6    # "_arg2":J
    .end local v12    # "_arg1":J
    :sswitch_e
    const-string v3, "com.motorola.slpc.IModalityService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 216
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/motorola/slpc/IMovementListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/motorola/slpc/IMovementListener;

    move-result-object v4

    .line 217
    .restart local v4    # "_arg0":Lcom/motorola/slpc/IMovementListener;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/motorola/slpc/IModalityService$Stub;->removeMovementListener(Lcom/motorola/slpc/IMovementListener;)V

    .line 218
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 219
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 223
    .end local v4    # "_arg0":Lcom/motorola/slpc/IMovementListener;
    :sswitch_f
    const-string v3, "com.motorola.slpc.IModalityService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 225
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/motorola/slpc/IAccumulatedMovementListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/motorola/slpc/IAccumulatedMovementListener;

    move-result-object v4

    .line 227
    .local v4, "_arg0":Lcom/motorola/slpc/IAccumulatedMovementListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 229
    .restart local v5    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 231
    .local v6, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 232
    .local v8, "_arg3":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6, v8}, Lcom/motorola/slpc/IModalityService$Stub;->addAccumulatedMovementListener(Lcom/motorola/slpc/IAccumulatedMovementListener;III)Z

    move-result v2

    .line 233
    .restart local v2    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 234
    if-eqz v2, :cond_8

    const/4 v3, 0x1

    :goto_9
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 235
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 234
    :cond_8
    const/4 v3, 0x0

    goto :goto_9

    .line 239
    .end local v2    # "_result":Z
    .end local v4    # "_arg0":Lcom/motorola/slpc/IAccumulatedMovementListener;
    .end local v5    # "_arg1":I
    .end local v6    # "_arg2":I
    .end local v8    # "_arg3":I
    :sswitch_10
    const-string v3, "com.motorola.slpc.IModalityService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 241
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/motorola/slpc/IAccumulatedMovementListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/motorola/slpc/IAccumulatedMovementListener;

    move-result-object v4

    .line 242
    .restart local v4    # "_arg0":Lcom/motorola/slpc/IAccumulatedMovementListener;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/motorola/slpc/IModalityService$Stub;->removeAccumulatedMovementListener(Lcom/motorola/slpc/IAccumulatedMovementListener;)V

    .line 243
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 244
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 248
    .end local v4    # "_arg0":Lcom/motorola/slpc/IAccumulatedMovementListener;
    :sswitch_11
    const-string v3, "com.motorola.slpc.IModalityService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 250
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/motorola/slpc/IAccumulatedMovementListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/motorola/slpc/IAccumulatedMovementListener;

    move-result-object v4

    .line 251
    .restart local v4    # "_arg0":Lcom/motorola/slpc/IAccumulatedMovementListener;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/motorola/slpc/IModalityService$Stub;->getAccumulatedTime(Lcom/motorola/slpc/IAccumulatedMovementListener;)I

    move-result v2

    .line 252
    .local v2, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 253
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 254
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 258
    .end local v2    # "_result":I
    .end local v4    # "_arg0":Lcom/motorola/slpc/IAccumulatedMovementListener;
    :sswitch_12
    const-string v3, "com.motorola.slpc.IModalityService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 260
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/motorola/slpc/IAccumulatedMovementListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/motorola/slpc/IAccumulatedMovementListener;

    move-result-object v4

    .line 261
    .restart local v4    # "_arg0":Lcom/motorola/slpc/IAccumulatedMovementListener;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/motorola/slpc/IModalityService$Stub;->getAccumulatedDistance(Lcom/motorola/slpc/IAccumulatedMovementListener;)I

    move-result v2

    .line 262
    .restart local v2    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 263
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 264
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 268
    .end local v2    # "_result":I
    .end local v4    # "_arg0":Lcom/motorola/slpc/IAccumulatedMovementListener;
    :sswitch_13
    const-string v3, "com.motorola.slpc.IModalityService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 270
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/motorola/slpc/IVehicleListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/motorola/slpc/IVehicleListener;

    move-result-object v4

    .line 271
    .local v4, "_arg0":Lcom/motorola/slpc/IVehicleListener;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/motorola/slpc/IModalityService$Stub;->addVehicleListener(Lcom/motorola/slpc/IVehicleListener;)Z

    move-result v2

    .line 272
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 273
    if-eqz v2, :cond_9

    const/4 v3, 0x1

    :goto_a
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 274
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 273
    :cond_9
    const/4 v3, 0x0

    goto :goto_a

    .line 278
    .end local v2    # "_result":Z
    .end local v4    # "_arg0":Lcom/motorola/slpc/IVehicleListener;
    :sswitch_14
    const-string v3, "com.motorola.slpc.IModalityService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 280
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/motorola/slpc/IVehicleListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/motorola/slpc/IVehicleListener;

    move-result-object v4

    .line 281
    .restart local v4    # "_arg0":Lcom/motorola/slpc/IVehicleListener;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/motorola/slpc/IModalityService$Stub;->removeVehicleListener(Lcom/motorola/slpc/IVehicleListener;)V

    .line 282
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 283
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 41
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x14 -> :sswitch_14
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
