ALTER TABLE `m_ba` ADD PRIMARY KEY (`id`);
ALTER TABLE `m_check` ADD PRIMARY KEY (`c_id`);
ALTER TABLE `m_modul` ADD PRIMARY KEY (`id`);
ALTER TABLE `m_uat_scn` ADD PRIMARY KEY (`uat_id`);
ALTER TABLE `m_uat_step` ADD PRIMARY KEY (`id_step`);
ALTER TABLE `user` ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `userid_UNIQUE` (`userid`);
ALTER TABLE `v_check` ADD PRIMARY KEY (`id`);
ALTER TABLE `v_uat`ADD PRIMARY KEY (`id`);

ALTER TABLE `m_ba` MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
ALTER TABLE `m_check` MODIFY `c_id` int(11) NOT NULL AUTO_INCREMENT;
ALTER TABLE `m_modul` MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
ALTER TABLE `m_uat_scn` MODIFY `uat_id` int(11) NOT NULL AUTO_INCREMENT;
ALTER TABLE `user` MODIFY `id` int(4) NOT NULL AUTO_INCREMENT;
ALTER TABLE `v_check` MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
ALTER TABLE `v_uat` MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;