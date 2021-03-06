--
-- PostgreSQL database dump
--

-- Dumped from database version 13.3 (Ubuntu 13.3-1.pgdg20.04+1)
-- Dumped by pg_dump version 13.3

-- Started on 2021-06-24 22:26:56

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false,1,1,1);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 3972 (class 0 OID 16411142)
-- Dependencies: 201
-- Data for Name: bet; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.bets VALUES ('3dc2f1d5-5c60-4ac1-a82a-0d7c0e96629e', '7f9fc1a2-7179-47b1-babb-faf7f5b8b712', 285418, 'DRAW',1,1,1,1,1,1);
INSERT INTO public.bets VALUES ('567be076-3fab-434d-8eb1-02a00d76f4e4', '7f9fc1a2-7179-47b1-babb-faf7f5b8b712', 285419, 'AWAY_TEAM',1,1,1);
INSERT INTO public.bets VALUES ('64b394f9-1c42-4ce4-b372-46962aed449b', '7f9fc1a2-7179-47b1-babb-faf7f5b8b712', 285424, 'DRAW',1,1,1);
INSERT INTO public.bets VALUES ('4f3a2940-5ffd-4c76-af4c-91471133f48c', '7f9fc1a2-7179-47b1-babb-faf7f5b8b712', 285425, 'HOME_TEAM',1,1,1);
INSERT INTO public.bets VALUES ('20d004f3-0a41-424c-b6de-26e62f565538', 'eff824bf-1236-419e-8845-75344adaecad', 285418, 'HOME_TEAM',1,1,1);
INSERT INTO public.bets VALUES ('82ef5223-735f-4444-b148-1cdd9370e5a3', 'eff824bf-1236-419e-8845-75344adaecad', 285419, 'DRAW',1,1,1);
INSERT INTO public.bets VALUES ('55505f14-a1ce-4f73-a96c-fc5b0390a2e4', 'eff824bf-1236-419e-8845-75344adaecad', 285424, 'DRAW',1,1,1);
INSERT INTO public.bets VALUES ('21fecca3-45ba-4fdc-9721-49f4c3d69363', 'eff824bf-1236-419e-8845-75344adaecad', 285425, 'HOME_TEAM',1,1,1);
INSERT INTO public.bets VALUES ('d3d48aab-9fed-4a3a-b68b-3d698602b447', '8e64e85c-8309-4bac-bc3d-bbd9be11c641', 285418, 'AWAY_TEAM',1,1,1);
INSERT INTO public.bets VALUES ('47f825cb-54fb-486f-8f08-23f05cb2af9d', '17a5d7a0-4c45-46fe-9976-ccdebe46540a', 285418, 'AWAY_TEAM',1,1,1);
INSERT INTO public.bets VALUES ('9ff660b7-7cb5-4ce9-98ae-3658e72f318c', '17a5d7a0-4c45-46fe-9976-ccdebe46540a', 285419, 'AWAY_TEAM',1,1,1);
INSERT INTO public.bets VALUES ('60be8f91-cd47-4778-878f-dd03d4cb97e6', '17a5d7a0-4c45-46fe-9976-ccdebe46540a', 285424, 'HOME_TEAM',1,1,1);
INSERT INTO public.bets VALUES ('b3555e95-1ead-4067-8f3c-04394b45d399', '17a5d7a0-4c45-46fe-9976-ccdebe46540a', 285425, 'HOME_TEAM',1,1,1);
INSERT INTO public.bets VALUES ('84e4a63a-8572-441b-9927-fc7884aac908', '17a5d7a0-4c45-46fe-9976-ccdebe46540a', 285436, 'HOME_TEAM',1,1,1);
INSERT INTO public.bets VALUES ('f2f4441e-8167-4ef1-a6b0-73a3053b7926', '18d88682-8c86-45b6-b186-37751b071a91', 285418, 'HOME_TEAM',1,1,1);
INSERT INTO public.bets VALUES ('d03b5888-5b31-4ba6-8e08-9762e0b14512', 'bc826899-bd84-4e9f-894c-978b0dc91991', 285418, 'AWAY_TEAM',1,1,1);
INSERT INTO public.bets VALUES ('c26f45a2-dc25-4bb2-bb01-8cc0c94ce80e', 'c310eed6-8e9e-4f26-bc78-0290c765fd86', 285418, 'AWAY_TEAM',1,1,1);
INSERT INTO public.bets VALUES ('768d597b-7abe-4338-9ead-2f5e42953c49', '8e64e85c-8309-4bac-bc3d-bbd9be11c641', 285419, 'DRAW',1,1,1);
INSERT INTO public.bets VALUES ('380d2bfe-e585-4de6-b726-d0ddd82c6709', '8e64e85c-8309-4bac-bc3d-bbd9be11c641', 285424, 'HOME_TEAM',1,1,1);
INSERT INTO public.bets VALUES ('80f3c731-fe8c-4aea-88db-cbe45818357d', '8e64e85c-8309-4bac-bc3d-bbd9be11c641', 285425, 'HOME_TEAM',1,1,1);
INSERT INTO public.bets VALUES ('e97339bf-1ab7-410b-97dd-77446b8ffe62', 'bc826899-bd84-4e9f-894c-978b0dc91991', 285419, 'DRAW',1,1,1);
INSERT INTO public.bets VALUES ('556d3849-931d-4dfa-b89f-e1dc7e8615c1', 'bc826899-bd84-4e9f-894c-978b0dc91991', 285425, 'HOME_TEAM',1,1,1);
INSERT INTO public.bets VALUES ('153e63e2-e6a6-40ce-893c-496f9d7d41d4', 'bc826899-bd84-4e9f-894c-978b0dc91991', 285424, 'HOME_TEAM',1,1,1);
INSERT INTO public.bets VALUES ('e190e718-b7c1-4899-b3af-4df78263c187', 'c310eed6-8e9e-4f26-bc78-0290c765fd86', 285419, 'AWAY_TEAM',1,1,1);
INSERT INTO public.bets VALUES ('68917817-4e7b-41a3-b42c-4d637c6512cb', 'c310eed6-8e9e-4f26-bc78-0290c765fd86', 285424, 'HOME_TEAM',1,1,1);
INSERT INTO public.bets VALUES ('37184638-e0db-4c57-a720-e3d8d86f7a47', 'c310eed6-8e9e-4f26-bc78-0290c765fd86', 285425, 'DRAW',1,1,1);
INSERT INTO public.bets VALUES ('f3ca8b15-58a5-4d15-9cfa-59746832f2e7', '18d88682-8c86-45b6-b186-37751b071a91', 285425, 'HOME_TEAM',1,1,1);
INSERT INTO public.bets VALUES ('aa9ec755-e348-4886-bc14-7181dc576ece', '8e64e85c-8309-4bac-bc3d-bbd9be11c641', 285430, 'HOME_TEAM',1,1,1);
INSERT INTO public.bets VALUES ('273ab56a-8c3b-4b20-80e8-2f2f983fc947', '8e64e85c-8309-4bac-bc3d-bbd9be11c641', 285431, 'HOME_TEAM',1,1,1);
INSERT INTO public.bets VALUES ('a00c096a-0242-4611-8364-c9e1ba5aab6b', '8e64e85c-8309-4bac-bc3d-bbd9be11c641', 285436, 'DRAW',1,1,1);
INSERT INTO public.bets VALUES ('7ad0e1b5-5f14-4e1a-a33e-281c41b8215c', 'bc826899-bd84-4e9f-894c-978b0dc91991', 285436, 'HOME_TEAM',1,1,1);
INSERT INTO public.bets VALUES ('66c76487-ae98-4e69-b8b4-0b0585eaae17', 'bc826899-bd84-4e9f-894c-978b0dc91991', 285431, 'HOME_TEAM',1,1,1);
INSERT INTO public.bets VALUES ('f7ae5fe1-cc91-4251-833b-20d45d48f427', 'bc826899-bd84-4e9f-894c-978b0dc91991', 285437, 'HOME_TEAM',1,1,1);
INSERT INTO public.bets VALUES ('ed6bbd3e-d39a-4f3c-b0ee-8322f1ff5140', 'bc826899-bd84-4e9f-894c-978b0dc91991', 285430, 'DRAW',1,1,1);
INSERT INTO public.bets VALUES ('3f01de2a-e0b3-41d2-b2dd-036198bae5a7', '18d88682-8c86-45b6-b186-37751b071a91', 285436, 'HOME_TEAM',1,1,1);
INSERT INTO public.bets VALUES ('5054435e-9bbb-4e8c-af74-dee259375f59', '18d88682-8c86-45b6-b186-37751b071a91', 285430, 'DRAW',1,1,1);
INSERT INTO public.bets VALUES ('d033a285-e7af-453b-aae6-e8570cc103a2', '18d88682-8c86-45b6-b186-37751b071a91', 285431, 'HOME_TEAM',1,1,1);
INSERT INTO public.bets VALUES ('24d7ed85-2c40-4368-aab4-b36dfda3da01', 'c310eed6-8e9e-4f26-bc78-0290c765fd86', 285436, 'HOME_TEAM',1,1,1);
INSERT INTO public.bets VALUES ('ce7a3b59-eddd-4fe5-a120-76fdf4863b10', 'c310eed6-8e9e-4f26-bc78-0290c765fd86', 285430, 'DRAW',1,1,1);
INSERT INTO public.bets VALUES ('c61478ad-9ea3-49ce-88ab-bdeb581875be', 'c310eed6-8e9e-4f26-bc78-0290c765fd86', 285431, 'HOME_TEAM',1,1,1);
INSERT INTO public.bets VALUES ('83267f32-cc60-4960-a640-ff03a83ec1f1', '17a5d7a0-4c45-46fe-9976-ccdebe46540a', 285430, 'DRAW',1,1,1);
INSERT INTO public.bets VALUES ('e05bac23-3c35-4a98-9b92-6e502472ba98', '17a5d7a0-4c45-46fe-9976-ccdebe46540a', 285431, 'HOME_TEAM',1,1,1);
INSERT INTO public.bets VALUES ('7d8c7739-e35e-48be-a464-b29433912975', '17a5d7a0-4c45-46fe-9976-ccdebe46540a', 285437, 'DRAW',1,1,1);
INSERT INTO public.bets VALUES ('62e33c05-c81f-4d1e-9342-f0cebb91b244', '17a5d7a0-4c45-46fe-9976-ccdebe46540a', 285442, 'DRAW',1,1,1);
INSERT INTO public.bets VALUES ('c987c692-014a-48dd-8770-057e66018161', '17a5d7a0-4c45-46fe-9976-ccdebe46540a', 285443, 'HOME_TEAM',1,1,1);
INSERT INTO public.bets VALUES ('ad71e1bb-b00c-401f-bb4b-7e465f51fb61', '8e64e85c-8309-4bac-bc3d-bbd9be11c641', 285437, 'HOME_TEAM',1,1,1);
INSERT INTO public.bets VALUES ('f4bbead5-db53-4eac-b6ce-76dc5c47c765', '8e64e85c-8309-4bac-bc3d-bbd9be11c641', 285443, 'HOME_TEAM',1,1,1);
INSERT INTO public.bets VALUES ('d1f93e6b-96a9-4a03-9c65-bc6826a63726', '8e64e85c-8309-4bac-bc3d-bbd9be11c641', 285442, 'HOME_TEAM',1,1,1);
INSERT INTO public.bets VALUES ('1518b777-d289-4d10-96dc-5b8ffa649a15', 'c310eed6-8e9e-4f26-bc78-0290c765fd86', 285443, 'HOME_TEAM',1,1,1);
INSERT INTO public.bets VALUES ('3f3ebf59-7e3d-4217-b6f5-6e75c8cb0df5', 'c310eed6-8e9e-4f26-bc78-0290c765fd86', 285442, 'HOME_TEAM',1,1,1);
INSERT INTO public.bets VALUES ('701d30dd-1ed3-4044-9458-944210e6216d', 'c310eed6-8e9e-4f26-bc78-0290c765fd86', 285437, 'HOME_TEAM',1,1,1);
INSERT INTO public.bets VALUES ('66942c86-6dc1-4bbc-ba98-b0cabaeaaa30', '18d88682-8c86-45b6-b186-37751b071a91', 285437, 'AWAY_TEAM',1,1,1);
INSERT INTO public.bets VALUES ('a8f3c990-5db2-46cc-9261-4332bddf4e74', '18d88682-8c86-45b6-b186-37751b071a91', 285442, 'HOME_TEAM',1,1,1);
INSERT INTO public.bets VALUES ('208ce8b6-6bb3-4b89-b00d-1bb53bc66b7b', '18d88682-8c86-45b6-b186-37751b071a91', 285443, 'HOME_TEAM',1,1,1);
INSERT INTO public.bets VALUES ('c22a2a94-6bfa-4355-89ea-193f740c08a8', 'bc826899-bd84-4e9f-894c-978b0dc91991', 285442, 'HOME_TEAM',1,1,1);
INSERT INTO public.bets VALUES ('9f4c3cbd-35a8-4a6a-99ef-498d2a30a653', 'bc826899-bd84-4e9f-894c-978b0dc91991', 285443, 'HOME_TEAM',1,1,1);
INSERT INTO public.bets VALUES ('5f98cf29-70a1-4635-a22d-adb915145852', 'eff824bf-1236-419e-8845-75344adaecad', 285442, 'HOME_TEAM',1,1,1);
INSERT INTO public.bets VALUES ('5d41bc4a-e1da-4de5-9baf-ecda6129c369', 'eff824bf-1236-419e-8845-75344adaecad', 285443, 'HOME_TEAM',1,1,1);
INSERT INTO public.bets VALUES ('9759f4e7-a014-4f16-8ae8-2a395515e23a', 'eff824bf-1236-419e-8845-75344adaecad', 285448, 'AWAY_TEAM',1,1,1);
INSERT INTO public.bets VALUES ('2e2ba0cc-68a0-457a-a6d1-a23b819a6105', 'eff824bf-1236-419e-8845-75344adaecad', 285449, 'AWAY_TEAM',1,1,1);
INSERT INTO public.bets VALUES ('a845610d-1cf5-4ac6-8cd3-a8670359f5d9', 'eff824bf-1236-419e-8845-75344adaecad', 285426, 'AWAY_TEAM',1,1,1);
INSERT INTO public.bets VALUES ('8ae33b50-48dc-494b-9386-45be82a9ec5e', 'eff824bf-1236-419e-8845-75344adaecad', 285420, 'DRAW',1,1,1);
INSERT INTO public.bets VALUES ('f2be6703-4acc-47a4-89e7-2b46ebac2eab', 'eff824bf-1236-419e-8845-75344adaecad', 285421, 'HOME_TEAM',1,1,1);
INSERT INTO public.bets VALUES ('63666e60-c058-4587-b9d0-174a6bbaca63', 'eff824bf-1236-419e-8845-75344adaecad', 285432, 'HOME_TEAM',1,1,1);
INSERT INTO public.bets VALUES ('e6670600-c84c-43cc-b768-145887b9aecf', '17a5d7a0-4c45-46fe-9976-ccdebe46540a', 285448, 'AWAY_TEAM',1,1,1);
INSERT INTO public.bets VALUES ('fdf4b54a-9dff-4d4e-82f3-6a0672e5caba', '17a5d7a0-4c45-46fe-9976-ccdebe46540a', 285449, 'HOME_TEAM',1,1,1);
INSERT INTO public.bets VALUES ('95784db6-ea54-41b4-acee-8db45b7a8454', '17a5d7a0-4c45-46fe-9976-ccdebe46540a', 285426, 'DRAW',1,1,1);
INSERT INTO public.bets VALUES ('d1df38fb-588e-47a5-bf76-4c40c7c63ec6', '17a5d7a0-4c45-46fe-9976-ccdebe46540a', 285420, 'AWAY_TEAM',1,1,1);
INSERT INTO public.bets VALUES ('2e1e2e9d-8629-4db2-807f-7c46ddfab8e4', '17a5d7a0-4c45-46fe-9976-ccdebe46540a', 285421, 'HOME_TEAM',1,1,1);
INSERT INTO public.bets VALUES ('74fe030e-1609-48dc-b2e4-3ee7e7435e58', '17a5d7a0-4c45-46fe-9976-ccdebe46540a', 285432, 'HOME_TEAM',1,1,1);
INSERT INTO public.bets VALUES ('d61079fe-8949-4ec2-a4c6-9c1c4b3086ba', '17a5d7a0-4c45-46fe-9976-ccdebe46540a', 285427, 'AWAY_TEAM',1,1,1);
INSERT INTO public.bets VALUES ('ce8f8449-f922-4ce6-89f1-348be4615239', '17a5d7a0-4c45-46fe-9976-ccdebe46540a', 285433, 'HOME_TEAM',1,1,1);
INSERT INTO public.bets VALUES ('39fff8da-2a3f-43cd-ac50-a99e78f5bbb0', '18d88682-8c86-45b6-b186-37751b071a91', 285448, 'AWAY_TEAM',1,1,1);
INSERT INTO public.bets VALUES ('aebec148-3384-459d-a9e2-3f90e31c4e90', '18d88682-8c86-45b6-b186-37751b071a91', 285449, 'HOME_TEAM',1,1,1);
INSERT INTO public.bets VALUES ('2003c000-52e2-4b90-879c-b104b644b900', 'bc826899-bd84-4e9f-894c-978b0dc91991', 285421, 'HOME_TEAM',1,1,1);
INSERT INTO public.bets VALUES ('68a0402f-aab7-46b3-bb81-822eba91075a', 'bc826899-bd84-4e9f-894c-978b0dc91991', 285420, 'DRAW',1,1,1);
INSERT INTO public.bets VALUES ('c491f496-2d79-4b4e-957a-9317b661f620', 'bc826899-bd84-4e9f-894c-978b0dc91991', 285426, 'HOME_TEAM',1,1,1);
INSERT INTO public.bets VALUES ('42eaa626-c83d-4a88-ab53-4d2e2d4ca36c', 'bc826899-bd84-4e9f-894c-978b0dc91991', 285449, 'HOME_TEAM',1,1,1);
INSERT INTO public.bets VALUES ('1b1ee2b3-f1c2-4fb6-8916-b8997100034b', 'bc826899-bd84-4e9f-894c-978b0dc91991', 285448, 'AWAY_TEAM',1,1,1);
INSERT INTO public.bets VALUES ('bf0fb900-2761-4707-92bf-4ded92b1e26c', '8e64e85c-8309-4bac-bc3d-bbd9be11c641', 285448, 'AWAY_TEAM',1,1,1);
INSERT INTO public.bets VALUES ('ca87446e-9a36-416a-a085-3a9564920d58', '8e64e85c-8309-4bac-bc3d-bbd9be11c641', 285449, 'HOME_TEAM',1,1,1);
INSERT INTO public.bets VALUES ('760cc456-fea2-43a4-9bb5-7e636cd7df34', '8e64e85c-8309-4bac-bc3d-bbd9be11c641', 285426, 'AWAY_TEAM',1,1,1);
INSERT INTO public.bets VALUES ('fa8158a2-67e9-4016-8f2d-53160f36e586', '8e64e85c-8309-4bac-bc3d-bbd9be11c641', 285420, 'HOME_TEAM',1,1,1);
INSERT INTO public.bets VALUES ('1a749daf-4f83-4842-9b86-3c5048add902', '8e64e85c-8309-4bac-bc3d-bbd9be11c641', 285421, 'HOME_TEAM',1,1,1);
INSERT INTO public.bets VALUES ('1deff057-0df1-48db-8bb5-8a9c4849e857', '18d88682-8c86-45b6-b186-37751b071a91', 285426, 'AWAY_TEAM',1,1,1);
INSERT INTO public.bets VALUES ('a5906ffd-5e02-4f86-8901-6e977cb18812', '18d88682-8c86-45b6-b186-37751b071a91', 285420, 'DRAW',1,1,1);
INSERT INTO public.bets VALUES ('cc82dc39-173f-4bfb-a621-c73b3f93c981', 'c310eed6-8e9e-4f26-bc78-0290c765fd86', 285420, 'HOME_TEAM',1,1,1);
INSERT INTO public.bets VALUES ('3c38e043-d0ea-493a-bb39-cd6d4f889717', 'c310eed6-8e9e-4f26-bc78-0290c765fd86', 285421, 'HOME_TEAM',1,1,1);
INSERT INTO public.bets VALUES ('a164f0d1-bd38-4ac5-aa31-9d523fdbdc40', 'bc826899-bd84-4e9f-894c-978b0dc91991', 285432, 'HOME_TEAM',1,1,1);
INSERT INTO public.bets VALUES ('1fd7906c-4f12-4730-8f21-d7f2587d566e', 'bc826899-bd84-4e9f-894c-978b0dc91991', 285427, 'AWAY_TEAM',1,1,1);
INSERT INTO public.bets VALUES ('48a768e7-298f-4d36-ae80-d44fc959a644', 'bc826899-bd84-4e9f-894c-978b0dc91991', 285433, 'HOME_TEAM',1,1,1);
INSERT INTO public.bets VALUES ('a4411a0b-1584-48ce-be36-27f06df26191', 'bc826899-bd84-4e9f-894c-978b0dc91991', 285444, 'HOME_TEAM',1,1,1);
INSERT INTO public.bets VALUES ('59badf31-2292-4218-bb8a-f47afc78180f', 'bc826899-bd84-4e9f-894c-978b0dc91991', 285438, 'HOME_TEAM',1,1,1);
INSERT INTO public.bets VALUES ('31e6c311-b488-4bfc-b7b6-5f15a4b70a48', 'bc826899-bd84-4e9f-894c-978b0dc91991', 285439, 'HOME_TEAM',1,1,1);
INSERT INTO public.bets VALUES ('331d338c-8e77-4272-af65-54ce11933000', 'bc826899-bd84-4e9f-894c-978b0dc91991', 285450, 'AWAY_TEAM',1,1,1);
INSERT INTO public.bets VALUES ('910cb128-e08e-42f0-8838-1cd15085f381', 'bc826899-bd84-4e9f-894c-978b0dc91991', 285451, 'DRAW',1,1,1);
INSERT INTO public.bets VALUES ('4afc3611-8b5c-4e2b-b136-93ed6fbbfe1d', 'bc826899-bd84-4e9f-894c-978b0dc91991', 285445, 'HOME_TEAM',1,1,1);
INSERT INTO public.bets VALUES ('cb156e98-cf69-4959-9c62-592322179e5f', '8e64e85c-8309-4bac-bc3d-bbd9be11c641', 285432, 'HOME_TEAM',1,1,1);
INSERT INTO public.bets VALUES ('0fe56c50-d004-4af4-a051-a9ce281890ab', '8e64e85c-8309-4bac-bc3d-bbd9be11c641', 285427, 'AWAY_TEAM',1,1,1);
INSERT INTO public.bets VALUES ('a6c403c9-e278-46a6-baa1-7c8c3da1872d', '8e64e85c-8309-4bac-bc3d-bbd9be11c641', 285433, 'HOME_TEAM',1,1,1);
INSERT INTO public.bets VALUES ('ffe7b4b7-5fea-4545-9c75-c9c01528919f', '18d88682-8c86-45b6-b186-37751b071a91', 285432, 'HOME_TEAM',1,1,1);
INSERT INTO public.bets VALUES ('254fbd5a-7bce-4b62-9bf1-597a2d5c5701', '18d88682-8c86-45b6-b186-37751b071a91', 285427, 'AWAY_TEAM',1,1,1);
INSERT INTO public.bets VALUES ('8eb45a19-e010-4c77-921e-f6b3aeca796a', '18d88682-8c86-45b6-b186-37751b071a91', 285433, 'HOME_TEAM',1,1,1);
INSERT INTO public.bets VALUES ('d61b1837-2545-4797-b821-3e2b0375e146', 'c310eed6-8e9e-4f26-bc78-0290c765fd86', 285427, 'AWAY_TEAM',1,1,1);
INSERT INTO public.bets VALUES ('0c297734-7ddb-4ec8-93b5-c827fb1b1a69', 'c310eed6-8e9e-4f26-bc78-0290c765fd86', 285433, 'HOME_TEAM',1,1,1);
INSERT INTO public.bets VALUES ('b8e557b1-de34-4bc0-bb7f-595d2bbb9570', '17a5d7a0-4c45-46fe-9976-ccdebe46540a', 285444, 'HOME_TEAM',1,1,1);
INSERT INTO public.bets VALUES ('9b7c659e-d6ef-4982-a85c-1a687c4f4ab4', '17a5d7a0-4c45-46fe-9976-ccdebe46540a', 285438, 'HOME_TEAM',1,1,1);
INSERT INTO public.bets VALUES ('f7f1257f-ad67-4001-b6d0-5bc234130cac', '17a5d7a0-4c45-46fe-9976-ccdebe46540a', 285439, 'HOME_TEAM',1,1,1);
INSERT INTO public.bets VALUES ('67cf5142-0fbd-48b5-9422-2aaa236d40e2', '17a5d7a0-4c45-46fe-9976-ccdebe46540a', 285450, 'AWAY_TEAM',1,1,1);
INSERT INTO public.bets VALUES ('5bbd4071-ac43-482f-a02d-799d3cfe9315', '17a5d7a0-4c45-46fe-9976-ccdebe46540a', 285451, 'HOME_TEAM',1,1,1);
INSERT INTO public.bets VALUES ('c5e159fa-7077-487e-b545-cbe8f8a143de', '17a5d7a0-4c45-46fe-9976-ccdebe46540a', 285445, 'HOME_TEAM',1,1,1);
INSERT INTO public.bets VALUES ('ae26ad8b-bb4f-47e9-84cc-b618fb30e346', '8e64e85c-8309-4bac-bc3d-bbd9be11c641', 285444, 'HOME_TEAM',1,1,1);
INSERT INTO public.bets VALUES ('168cd74c-94bf-4a57-9641-ce0807c2163f', '8e64e85c-8309-4bac-bc3d-bbd9be11c641', 285438, 'HOME_TEAM',1,1,1);
INSERT INTO public.bets VALUES ('df5d81cf-92ae-4b7d-97bc-29d33da09928', '8e64e85c-8309-4bac-bc3d-bbd9be11c641', 285439, 'HOME_TEAM',1,1,1);
INSERT INTO public.bets VALUES ('b2e364f2-c744-43b3-970e-d3ca1e45b95e', '18d88682-8c86-45b6-b186-37751b071a91', 285444, 'AWAY_TEAM',1,1,1);
INSERT INTO public.bets VALUES ('bd4fd6f7-ed9a-499b-9e78-73e39d4915d2', '18d88682-8c86-45b6-b186-37751b071a91', 285438, 'HOME_TEAM',1,1,1);
INSERT INTO public.bets VALUES ('41890c4b-c0a6-4dac-a6bf-b52d465446a6', '18d88682-8c86-45b6-b186-37751b071a91', 285439, 'HOME_TEAM',1,1,1);
INSERT INTO public.bets VALUES ('e2cd03ea-14c5-4d39-b4a6-2092f714a122', 'c310eed6-8e9e-4f26-bc78-0290c765fd86', 285444, 'HOME_TEAM',1,1,1);
INSERT INTO public.bets VALUES ('8cd1e3bd-1071-4aeb-888f-f3ac4409a0f7', 'c310eed6-8e9e-4f26-bc78-0290c765fd86', 285438, 'HOME_TEAM',1,1,1);
INSERT INTO public.bets VALUES ('a70604a9-db8d-4b09-ae38-44731fbdbc08', 'c310eed6-8e9e-4f26-bc78-0290c765fd86', 285439, 'HOME_TEAM',1,1,1);
INSERT INTO public.bets VALUES ('68d423a4-5d52-4aa5-b947-11a5480df64a', '18d88682-8c86-45b6-b186-37751b071a91', 285450, 'AWAY_TEAM',1,1,1);
INSERT INTO public.bets VALUES ('13cd0825-6556-45e3-8810-651c203161dc', '18d88682-8c86-45b6-b186-37751b071a91', 285451, 'HOME_TEAM',1,1,1);
INSERT INTO public.bets VALUES ('c3a567cb-0b77-467e-8fbb-4dfb423752e6', '18d88682-8c86-45b6-b186-37751b071a91', 285445, 'HOME_TEAM',1,1,1);
INSERT INTO public.bets VALUES ('f0fbb96e-f8f6-49ff-a27b-15a28c66da60', '8e64e85c-8309-4bac-bc3d-bbd9be11c641', 285450, 'AWAY_TEAM',1,1,1);
INSERT INTO public.bets VALUES ('a79f7f59-21fe-4b28-ada9-609f550a7982', '8e64e85c-8309-4bac-bc3d-bbd9be11c641', 285451, 'HOME_TEAM',1,1,1);
INSERT INTO public.bets VALUES ('cfdff072-c201-44f3-87de-b1f1797e6c9c', 'c310eed6-8e9e-4f26-bc78-0290c765fd86', 285451, 'AWAY_TEAM',1,1,1);
INSERT INTO public.bets VALUES ('c1f02d7f-5313-46cd-8a4d-4db8abdbef41', 'c310eed6-8e9e-4f26-bc78-0290c765fd86', 285445, 'HOME_TEAM',1,1,1);
INSERT INTO public.bets VALUES ('614ed150-8b47-4c11-a0cc-67724398b409', '17a5d7a0-4c45-46fe-9976-ccdebe46540a', 285422, 'DRAW',1,1,1);
INSERT INTO public.bets VALUES ('3a481c78-4bf4-4fcc-80ef-2fe60d701309', '17a5d7a0-4c45-46fe-9976-ccdebe46540a', 285423, 'HOME_TEAM',1,1,1);
INSERT INTO public.bets VALUES ('6ecbd3e2-77b5-4584-b7bc-9687ef324f04', '17a5d7a0-4c45-46fe-9976-ccdebe46540a', 285434, 'AWAY_TEAM',1,1,1);
INSERT INTO public.bets VALUES ('47b672ac-1f02-4615-a357-0af3a884be04', '17a5d7a0-4c45-46fe-9976-ccdebe46540a', 285435, 'DRAW',1,1,1);
INSERT INTO public.bets VALUES ('88fdb9af-c492-441f-b8af-f238d28c371d', '8e64e85c-8309-4bac-bc3d-bbd9be11c641', 285422, 'HOME_TEAM',1,1,1);
INSERT INTO public.bets VALUES ('958934a0-63b2-415c-be8a-c60f9d9914d6', '8e64e85c-8309-4bac-bc3d-bbd9be11c641', 285423, 'DRAW',1,1,1);
INSERT INTO public.bets VALUES ('68a8eaa6-9bde-4b17-a3c8-2179057f2e9a', 'bc826899-bd84-4e9f-894c-978b0dc91991', 285422, 'HOME_TEAM',1,1,1);
INSERT INTO public.bets VALUES ('dafb1c7e-6547-465b-86d3-49b192493ddd', 'bc826899-bd84-4e9f-894c-978b0dc91991', 285423, 'HOME_TEAM',1,1,1);
INSERT INTO public.bets VALUES ('20e1bc66-28cb-46a3-89db-cd5537a877b5', 'bc826899-bd84-4e9f-894c-978b0dc91991', 285434, 'AWAY_TEAM',1,1,1);
INSERT INTO public.bets VALUES ('4ca83167-a16d-4060-bd5a-487b53be56db', 'bc826899-bd84-4e9f-894c-978b0dc91991', 285435, 'HOME_TEAM',1,1,1);
INSERT INTO public.bets VALUES ('d781157d-3dd5-49bd-b407-f222b32af6ed', '18d88682-8c86-45b6-b186-37751b071a91', 285422, 'HOME_TEAM',1,1,1);
INSERT INTO public.bets VALUES ('c63ad26a-5b49-493d-9ca9-813e68612778', '18d88682-8c86-45b6-b186-37751b071a91', 285423, 'DRAW',1,1,1);
INSERT INTO public.bets VALUES ('233dd08d-4a36-4900-a9eb-a7baffc5c0bc', '8e64e85c-8309-4bac-bc3d-bbd9be11c641', 285434, 'AWAY_TEAM',1,1,1);
INSERT INTO public.bets VALUES ('98daef84-a7eb-49d7-af2f-530880ed272d', '8e64e85c-8309-4bac-bc3d-bbd9be11c641', 285435, 'DRAW',1,1,1);
INSERT INTO public.bets VALUES ('85cf5a80-897c-4fbb-aa86-bf62f0e2b703', '8e64e85c-8309-4bac-bc3d-bbd9be11c641', 285428, 'AWAY_TEAM',1,1,1);
INSERT INTO public.bets VALUES ('38d91411-e333-4cdb-847b-00da2b0b6e94', '8e64e85c-8309-4bac-bc3d-bbd9be11c641', 285429, 'AWAY_TEAM',1,1,1);
INSERT INTO public.bets VALUES ('a142c6db-c0b3-4c98-af91-74623b40a8cc', '18d88682-8c86-45b6-b186-37751b071a91', 285434, 'AWAY_TEAM',1,1,1);
INSERT INTO public.bets VALUES ('e145021e-78b1-4c2d-a7af-d346b30ada8e', '18d88682-8c86-45b6-b186-37751b071a91', 285435, 'AWAY_TEAM',1,1,1);
INSERT INTO public.bets VALUES ('b953c073-a656-48d9-98fb-1b0fba8f35de', '18d88682-8c86-45b6-b186-37751b071a91', 285428, 'AWAY_TEAM',1,1,1);
INSERT INTO public.bets VALUES ('92cbd481-1c44-4e29-afb0-39a38d00e26f', '18d88682-8c86-45b6-b186-37751b071a91', 285429, 'AWAY_TEAM',1,1,1);
INSERT INTO public.bets VALUES ('d58f3775-f019-4084-a0dc-43d9448842cd', 'eff824bf-1236-419e-8845-75344adaecad', 285434, 'AWAY_TEAM',1,1,1);
INSERT INTO public.bets VALUES ('04facd44-7833-4536-8ff1-b29e8ce287f5', 'eff824bf-1236-419e-8845-75344adaecad', 285435, 'DRAW',1,1,1);
INSERT INTO public.bets VALUES ('9ea073cb-836a-4cb0-9dcd-1e6b0faff9af', 'eff824bf-1236-419e-8845-75344adaecad', 285428, 'AWAY_TEAM',1,1,1);
INSERT INTO public.bets VALUES ('3db115c4-a97c-4ec7-8f78-bb033f538350', 'eff824bf-1236-419e-8845-75344adaecad', 285429, 'AWAY_TEAM',1,1,1);
INSERT INTO public.bets VALUES ('3d9fc6de-3b68-430c-a97e-83733736337d', 'eff824bf-1236-419e-8845-75344adaecad', 285440, 'DRAW',1,1,1);
INSERT INTO public.bets VALUES ('59c74652-8c57-409f-9dac-91a30eb15175', 'eff824bf-1236-419e-8845-75344adaecad', 285441, 'HOME_TEAM',1,1,1);
INSERT INTO public.bets VALUES ('1f9b70fb-2ef5-4749-bfe2-94423eec55cd', 'eff824bf-1236-419e-8845-75344adaecad', 285446, 'AWAY_TEAM',1,1,1);
INSERT INTO public.bets VALUES ('4cb0a381-e72d-4d4f-bc83-cbebf3dc2a2a', 'eff824bf-1236-419e-8845-75344adaecad', 285447, 'HOME_TEAM',1,1,1);
INSERT INTO public.bets VALUES ('5e5a3758-e709-46dc-a990-c666cd85c3c4', 'eff824bf-1236-419e-8845-75344adaecad', 285452, 'HOME_TEAM',1,1,1);
INSERT INTO public.bets VALUES ('efddef22-ed34-497b-839b-d4cf66c55205', 'eff824bf-1236-419e-8845-75344adaecad', 285453, 'AWAY_TEAM',1,1,1);
INSERT INTO public.bets VALUES ('d5f953cb-8e18-4b32-a1ea-5c532320797d', 'c310eed6-8e9e-4f26-bc78-0290c765fd86', 285428, 'AWAY_TEAM',1,1,1);
INSERT INTO public.bets VALUES ('7b3530cd-5d48-4a58-905e-c7a147767a5e', 'c310eed6-8e9e-4f26-bc78-0290c765fd86', 285429, 'AWAY_TEAM',1,1,1);
INSERT INTO public.bets VALUES ('b7d8061c-713b-4cf4-87a8-85010af53462', '18d88682-8c86-45b6-b186-37751b071a91', 285440, 'HOME_TEAM',1,1,1);
INSERT INTO public.bets VALUES ('571d2a26-d645-490c-b9f8-22cd19082922', '18d88682-8c86-45b6-b186-37751b071a91', 285441, 'AWAY_TEAM',1,1,1);
INSERT INTO public.bets VALUES ('295624e4-139a-4fe9-b05b-12f25b9d16cc', '8e64e85c-8309-4bac-bc3d-bbd9be11c641', 285440, 'HOME_TEAM',1,1,1);
INSERT INTO public.bets VALUES ('05bda27e-65ea-4cf8-aba1-b174c1019b58', '8e64e85c-8309-4bac-bc3d-bbd9be11c641', 285441, 'AWAY_TEAM',1,1,1);
INSERT INTO public.bets VALUES ('0fac89f7-2d36-4017-bc7e-e37e45e443dc', '17a5d7a0-4c45-46fe-9976-ccdebe46540a', 285428, 'AWAY_TEAM',1,1,1);
INSERT INTO public.bets VALUES ('18e26bc3-0da2-438b-9118-6fb353d2c930', '17a5d7a0-4c45-46fe-9976-ccdebe46540a', 285429, 'AWAY_TEAM',1,1,1);
INSERT INTO public.bets VALUES ('904c719d-b8df-4564-88db-4963877bc6b5', '17a5d7a0-4c45-46fe-9976-ccdebe46540a', 285440, 'HOME_TEAM',1,1,1);
INSERT INTO public.bets VALUES ('2dbfd136-f4c0-4138-848e-79ea98372a15', '17a5d7a0-4c45-46fe-9976-ccdebe46540a', 285441, 'AWAY_TEAM',1,1,1);
INSERT INTO public.bets VALUES ('649f81ad-d54d-4cd2-ae41-3b1ebccedb52', '17a5d7a0-4c45-46fe-9976-ccdebe46540a', 285446, 'AWAY_TEAM',1,1,1);
INSERT INTO public.bets VALUES ('cfd152bc-b300-444f-90a8-e002bef834f4', '17a5d7a0-4c45-46fe-9976-ccdebe46540a', 285447, 'AWAY_TEAM',1,1,1);
INSERT INTO public.bets VALUES ('0643d712-cf67-4596-a39b-08fee07b2853', '17a5d7a0-4c45-46fe-9976-ccdebe46540a', 285452, 'HOME_TEAM',1,1,1);
INSERT INTO public.bets VALUES ('40210c92-c32a-45b8-9570-218f8ec4a6bb', '17a5d7a0-4c45-46fe-9976-ccdebe46540a', 285453, 'AWAY_TEAM',1,1,1);
INSERT INTO public.bets VALUES ('6674bc5f-4213-4bc7-81b6-ada7fd334375', 'bc826899-bd84-4e9f-894c-978b0dc91991', 285429, 'AWAY_TEAM',1,1,1);
INSERT INTO public.bets VALUES ('49d2d2c8-9e3d-45f9-b21a-e275c518d8f4', 'bc826899-bd84-4e9f-894c-978b0dc91991', 285440, 'HOME_TEAM',1,1,1);
INSERT INTO public.bets VALUES ('1e764753-c8ca-44b0-b8f6-171e3cba5075', 'bc826899-bd84-4e9f-894c-978b0dc91991', 285428, 'DRAW',1,1,1);
INSERT INTO public.bets VALUES ('29ff8f7d-ab12-4c8e-800e-b5cda5dfeec2', 'bc826899-bd84-4e9f-894c-978b0dc91991', 285441, 'AWAY_TEAM',1,1,1);
INSERT INTO public.bets VALUES ('c29189c0-b9b6-4c50-a9a9-65e7a5027538', '18d88682-8c86-45b6-b186-37751b071a91', 285446, 'AWAY_TEAM',1,1,1);
INSERT INTO public.bets VALUES ('284a3e90-0e13-4030-a53c-d8de653f9b40', '18d88682-8c86-45b6-b186-37751b071a91', 285447, 'AWAY_TEAM',1,1,1);
INSERT INTO public.bets VALUES ('ac5ee285-c61f-420c-998a-ceb80da35f12', '18d88682-8c86-45b6-b186-37751b071a91', 285452, 'HOME_TEAM',1,1,1);
INSERT INTO public.bets VALUES ('9d4ea17c-1638-47a9-8fd2-6813aaa3409f', '18d88682-8c86-45b6-b186-37751b071a91', 285453, 'AWAY_TEAM',1,1,1);
INSERT INTO public.bets VALUES ('f90b0957-e426-453c-bb88-b8fbe3f02e09', 'bc826899-bd84-4e9f-894c-978b0dc91991', 285446, 'AWAY_TEAM',1,1,1);
INSERT INTO public.bets VALUES ('bf6a1b56-3ce8-438d-b999-b3ca61973d39', 'bc826899-bd84-4e9f-894c-978b0dc91991', 285447, 'HOME_TEAM',1,1,1);
INSERT INTO public.bets VALUES ('4ac4d295-412b-458e-a084-6d81b1e25498', 'bc826899-bd84-4e9f-894c-978b0dc91991', 285452, 'HOME_TEAM',1,1,1);
INSERT INTO public.bets VALUES ('7337a81f-6184-40c5-8b62-ee7e4ce619a4', 'bc826899-bd84-4e9f-894c-978b0dc91991', 285453, 'AWAY_TEAM',1,1,1);
INSERT INTO public.bets VALUES ('3a1b5e8e-d3c7-4850-afa7-519037e04223', 'c310eed6-8e9e-4f26-bc78-0290c765fd86', 285446, 'AWAY_TEAM',1,1,1);
INSERT INTO public.bets VALUES ('fe9e07c7-373d-4656-bb08-d4abc9e9488a', 'c310eed6-8e9e-4f26-bc78-0290c765fd86', 285447, 'AWAY_TEAM',1,1,1);
INSERT INTO public.bets VALUES ('50d8f069-06cb-4856-a522-7d3c90bb61fd', 'c310eed6-8e9e-4f26-bc78-0290c765fd86', 285452, 'HOME_TEAM',1,1,1);
INSERT INTO public.bets VALUES ('238ad482-f95f-4177-9734-3598a983d50f', 'c310eed6-8e9e-4f26-bc78-0290c765fd86', 285453, 'AWAY_TEAM',1,1,1);
INSERT INTO public.bets VALUES ('8ce528c3-b3c5-46ae-bea5-a01354882b63', '8e64e85c-8309-4bac-bc3d-bbd9be11c641', 285452, 'HOME_TEAM',1,1,1);
INSERT INTO public.bets VALUES ('0dcde228-d0aa-46c4-a4e4-058c5d670b55', '8e64e85c-8309-4bac-bc3d-bbd9be11c641', 285453, 'AWAY_TEAM',1,1,1);


-- Completed on 2021-06-24 22:26:59

--
-- PostgreSQL database dump complete
--

